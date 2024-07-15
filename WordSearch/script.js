const grid = createGrid(8, 8, ['SHOES', 'FASHION', 'MYNTRA', 'STYLED', 'KURTAS']);
const foundWords = [];
let selectedCells = [];
let lastSelectedCell = null;

const table = document.getElementById('word-search-grid');
const wordListItems = document.querySelectorAll('#wordList li');

function createGrid(rows, cols, words) {
    const letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    const grid = Array.from({ length: rows }, () => Array(cols).fill(''));

    for (const word of words) {
        placeWord(grid, word);
    }

    for (let i = 0; i < rows; i++) {
        for (let j = 0; j < cols; j++) {
            if (grid[i][j] === '') {
                grid[i][j] = letters.charAt(Math.floor(Math.random() * letters.length));
            }
        }
    }
    return grid;
}

function placeWord(grid, word) {
    const directions = [[0, 1], [1, 0]];
    const letters = word.split('');

    for (let i = 0; i < 100; i++) {
        const row = Math.floor(Math.random() * grid.length);
        const col = Math.floor(Math.random() * grid[0].length);
        const dir = directions[Math.floor(Math.random() * directions.length)];
        
        const [dRow, dCol] = dir;
        let fits = true;

        for (let j = 0; j < letters.length; j++) {
            const newRow = row + j * dRow;
            const newCol = col + j * dCol;

            if (newRow >= grid.length || newCol >= grid[0].length || grid[newRow][newCol] !== '') {
                fits = false;
                break;
            }
        }

        if (fits) {
            for (let j = 0; j < letters.length; j++) {
                grid[row + j * dRow][col + j * dCol] = letters[j];
            }
            break;
        }
    }
}

function createGridDisplay() {
    for (let row = 0; row < grid.length; row++) {
        const tr = document.createElement('tr');
        for (let col = 0; col < grid[row].length; col++) {
            const td = document.createElement('td');
            td.textContent = grid[row][col];
            td.addEventListener('click', () => selectCell(td));
            tr.appendChild(td);
        }
        table.appendChild(tr);
    }
}

function selectCell(cell) {
    const cells = Array.from(table.getElementsByTagName('td'));
    const currentIndex = cells.indexOf(cell);

    // If selecting the first cell
    if (selectedCells.length === 0) {
        selectedCells.push(cell);
        cell.classList.add('selected');
        lastSelectedCell = cell;
    } else {
        // Check if the clicked cell is a neighbor
        const lastIndex = cells.indexOf(lastSelectedCell);
        const neighborIndices = [
            lastIndex - 1,  // left
            lastIndex + 1,  // right
            lastIndex - 8,  // up
            lastIndex + 8   // down
        ];

        if (neighborIndices.includes(currentIndex)) {
            selectedCells.push(cell);
            cell.classList.add('selected');
            lastSelectedCell = cell;
        } else {
            // Reset selection if not a neighbor
            resetSelection();
            selectedCells.push(cell);
            cell.classList.add('selected');
            lastSelectedCell = cell;
        }
    }

    checkForWords();
}

function checkForWords() {
    let selectedString = '';
    selectedCells.forEach(cell => {
        selectedString += cell.textContent;
    });

    if (foundWords.includes(selectedString)) {
        alert(`You already found: ${selectedString}`);
    } else if (['SHOES', 'FASHION', 'MYNTRA', 'STYLED', 'KURTAS'].includes(selectedString)) {
        alert(`You found the word: ${selectedString}`);
        selectedCells.forEach(cell => {
            cell.classList.remove('selected');
            cell.classList.add('found'); // Highlight found word
        });
        markWordAsFound(selectedString);
        foundWords.push(selectedString);
        resetSelection();
    }
}

function resetSelection() {
    selectedCells.forEach(cell => cell.classList.remove('selected'));
    selectedCells = [];
    lastSelectedCell = null;
}

function markWordAsFound(word) {
    wordListItems.forEach(item => {
        if (item.dataset.word === word) {
            item.textContent += ' ✔️';
        }
    });
}

createGridDisplay();
