/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

function show_confirm() {
    var r=confirm("Bạn có chắc muốn xóa?");
    if (r==true) {
        return true;
    } 
    else {
        return false;
    }
}

