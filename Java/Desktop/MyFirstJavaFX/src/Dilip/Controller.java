package Dilip;

import javafx.scene.control.Alert;
import javafx.scene.input.MouseEvent;



public class Controller {
    public void ClickME_Clicked(MouseEvent mouseEvent) {
        Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setTitle("Information Dialog");
        alert.setHeaderText("Look, an Information Dialog");
        alert.setContentText("I have a great message for you!");

        alert.showAndWait();
    }
}
