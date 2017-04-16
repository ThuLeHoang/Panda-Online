// mô tả câu hỏi
import { Component } from '@angular/core';
import { CountQuestion} from "app/count-question";

@Component({
    selector: 'question-detail',
    styleUrls: ['./question-detail.component.css'],
    template: `
    <div *ngIf="nameQues">
        <h1>Bài 1 - Chương 1: Các số trong phạm vi 10</h1>
        <h2 class = "type">Điền số thích hợp vào ô trống.</h2>
        <!-- câu hỏi 1 trong panel, kiểm tra  -->
    </div>
    <div class="row">
        <div class="col-md-8">
            <div class="panel panel-body panel-primary" id="quesCount">
                <div *ngIf="showAns">
                    <h3><strong>{{QUESTIONES[x].name_ques}}</strong></h3>
                    <div id="imgQues">
                        <img src={{QUESTIONES[x].link_img}} />
                    </div>
                    <div id="listAns">
                        <input type="text" #result class = "ketqua">
                    </div>
                    <div id="submit_ans">
                        <button type="button" (click)="checkAns(result.value)" id="kiemtra">Kiểm tra</button>

                    </div>
                </div>

                <!-- hiển thị câu trả lời tiếp theo -->
                <div *ngIf="showNext">
                    <h3><strong>{{QUESTIONES[x].name_ques}}</strong></h3>
                    <div id="imgQues">
                        <img src={{QUESTIONES[x].link_img}} />
                    </div>
                    <div id="listAns">
                        <input type="text" #result>

                    </div>
                    <div id="submit_ans">
                        <button type="button" (click)="checkAns(result.value)" id="kiemtra">Kiểm tra</button>
                    </div>
                </div>

                <div *ngIf="nextLess">
                    <div id="baimoi">
                        <!-- hoàn thành cả 5 câu hỏi đúng -->
                        <div *ngIf="endLessPer">
                            <h2><strong>Chúc mừng bạn đã hoàn thành xuất sắc bài học 1!</strong></h2>
                            <h2><strong>Chuyển đến bài học mới nào</strong></h2>
                        </div>
                        <div *ngIf="endLess">
                            <h2><strong>Chúc mừng bạn đã hoàn thành bài học 1!</strong></h2>
                            <h2><strong>Chuyển đến bài học mới nào</strong></h2>
                        </div>
                        <button type="button" onclick="location.href='#'" class="btn btn-link">Bài 2 - chương 1: Các phép toán trong phạm vi 10. </button>
                    </div>
                </div>
            </div>

        </div>

        <div class="col-md-4">
            <h2 class="type1"><strong>Số sao đạt được </strong></h2>
            <br>
            <div class="panel panel-body panel-primary" id="panel_star">
                <div id="starAward">
                </div>
            </div>

        </div>
    </div>

  `,
})
export class QuestionDetailComponent {
    QUESTIONES: CountQuestion[] = [{
        name_ques: "Số cá xuất hiện trên hình? ",
        link_img: "./assets/image/3ca.png",
        true_ans: 3
    }, {
        name_ques: "Số chú cá xuất hiện trên hình?",
        link_img: "./assets/image/5ca.png",
        true_ans: 5
    }, {
        name_ques: "Số cây nấm xuất hiện trên hình?",
        link_img: "./assets/image/2nam.png",
        true_ans: 2
    }, {
        name_ques: "Số cây nấm xuất hiện trên hình?",
        link_img: "./assets/image/nam.png",
        true_ans: 1
    }, {
        name_ques: "Số cá xuất hiện trên hình?",
        link_img: "./assets/image/4ca.png",
        true_ans: 4
    }];

    nameQues = true;
    showNext = false; // hiện câu hỏi kế tiếp
    showAns = true; // hiện câu hỏi 
    nextLess = false;
    x = 0;
    stt = true;
    count_true = 0;
    endLessPer = false;
    endLess = false;


    rightAns(): void {
        var img = document.createElement("IMG");
        img.setAttribute("src", "./assets/image/true.png");
        document.getElementById("starAward").appendChild(img);

    }

    checkAns(value) {
        if (parseInt(value) == this.QUESTIONES[this.x].true_ans) {
            this.rightAns();          // thêm 1 ngôi sao vào trong khung 
            this.showNext = true;     // hiện câu hỏi tiếp
            this.showAns = false;     // ẩn câu hỏi trước
            this.count_true += 1;     // số câu đúng tăng thêm 1
            if (this.x <= this.QUESTIONES.length)
                this.x += 1;            // chỉ số đối tượng tăng lên 1

            if (this.x == this.QUESTIONES.length && this.count_true == this.QUESTIONES.length) {  // chỉ số bằng độ dài, số câu đúng = độ dài
                this.nameQues = false;
                this.showNext = false;
                this.nextLess = true;
                this.endLessPer = true;
                

            }

        } else {
            this.showNext = true;
            this.showAns = false;

            if (this.x <= this.QUESTIONES.length)
                this.x += 1;
            if (this.x == this.QUESTIONES.length) {
                this.nameQues = false;
                this.showNext = false;
                this.nextLess = true;
                this.endLess = true;
                if (this.count_true == 0) {
                    var para = document.createElement("P");
                    var t = document.createTextNode("Bạn không đạt được sao nào, cố gắng lần sau nhé!");
                    para.appendChild(t);
                    document.getElementById("panel_star").appendChild(para);
                }
            }

        }
    }
}