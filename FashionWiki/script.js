// Globals
var currentTextInput;
var puzzleArrayData;

// Loads the Crossword
function initializeScreen() {
    var puzzleTable = document.getElementById("puzzle");
    puzzleArrayData = preparePuzzleArray();
    for (var i = 0; i < puzzleArrayData.length; i++) {
        var row = puzzleTable.insertRow(-1);
        var rowData = puzzleArrayData[i];
        for (var j = 0; j < rowData.length; j++) {
            var cell = row.insertCell(-1);
            if (rowData[j] != 0) {
                var txtID = 'txt_' + i + '_' + j;
                cell.innerHTML = '<input type="text" class="inputBox" maxlength="1" style="text-transform: lowercase" id="' + txtID + '" onfocus="textInputFocus(\'' + txtID + '\')">';
            } else {
                cell.style.backgroundColor = "black";
            }
        }
    }
    addHint();
}

// Adds the hint numbers
function addHint() {
    document.getElementById("txt_0_4").placeholder = "1";
    document.getElementById("txt_2_6").placeholder = "2";
    document.getElementById("txt_3_1").placeholder = "3";
    document.getElementById("txt_3_9").placeholder = "4";
    document.getElementById("txt_6_2").placeholder = "5";
    document.getElementById("txt_9_0").placeholder = "6";
}

// Stores ID of the selected cell into currentTextInput
function textInputFocus(txtID123) {
    currentTextInput = txtID123;
}

// Returns Array
function preparePuzzleArray() {
    var items = [
        [0, 0, 0, 0, 's', 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 'a', 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 'l', 0, 'b', 0, 0, 0],
        [0, 'h', 'y', 'd', 'e', 'r', 'a', 'b', 'a', 'd'],
        [0, 0, 0, 0, 0, 0, 'n', 0, 0, 'r'],
        [0, 0, 0, 0, 0, 0, 'g', 0, 0, 'e'],
        [0, 0, 's', 'a', 'n', 'd', 'a', 'l', 0, 's'],
        [0, 0, 0, 0, 0, 0, 'l', 0, 0, 's'],
        [0, 0, 0, 0, 0, 0, 'o', 0, 0, 0],
        ['m', 'u', 'f', 'f', 'l', 'e', 'r', 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 'e', 0, 0, 0]
    ];
    return items;
}

// Clear All Button
function clearAllClicked() {
    currentTextInput = '';
    var puzzleTable = document.getElementById("puzzle");
    puzzleTable.innerHTML = '';
    initializeScreen();
}

// Check button
function checkClicked() {
    for (var i = 0; i < puzzleArrayData.length; i++) {
        var rowData = puzzleArrayData[i];
        for (var j = 0; j < rowData.length; j++) {
            if (rowData[j] != 0) {
                var selectedInputTextElement = document.getElementById('txt_' + i + '_' + j);
                if (selectedInputTextElement.value != puzzleArrayData[i][j]) {
                    selectedInputTextElement.style.backgroundColor = 'red';
                } else {
                    selectedInputTextElement.style.backgroundColor = 'white';
                }
            }
        }
    }
}

// Clue Button
function clueClicked() {
    if (currentTextInput != null) {
        var temp1 = currentTextInput;
        var token = temp1.split("_");
        var row = token[1];
        var column = token[2];
        document.getElementById(temp1).value = puzzleArrayData[row][column];
    }
}

// Solve Button
function solveClicked() {
    if (currentTextInput != null) {
        var temp1 = currentTextInput;
        var token = temp1.split("_");
        var row = token[1];
        var column = token[2];

        // Print elements on top
        for (var j = row; j >= 0; j--) {
            if (puzzleArrayData[j][column] != 0) {
                document.getElementById('txt_' + j + '_' + column).value = puzzleArrayData[j][column];
            } else break;
        }
        // Print elements on right
        for (var i = column; i < puzzleArrayData[row].length; i++) {
            if (puzzleArrayData[row][i] != 0) {
                document.getElementById('txt_' + row + '_' + i).value = puzzleArrayData[row][i];
            } else break;
        }

        // Print elements below
        for (var m = row; m < puzzleArrayData.length; m++) {
            if (puzzleArrayData[m][column] != 0) {
                document.getElementById('txt_' + m + '_' + column).value = puzzleArrayData[m][column];
            } else break;
        }
        // Print elements on left
        for (var k = column; k >= 0; k--) {
            if (puzzleArrayData[row][k] != 0) {
                document.getElementById('txt_' + row + '_' + k).value = puzzleArrayData[row][k];
            } else break;
        }
    }
}
