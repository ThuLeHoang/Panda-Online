import { Component } from '@angular/core';

@Component({
    selector: 'app-root',
    /*templateUrl: './app.component.html',
    styleUrls: ['./app.component.css'],*/
    template: `
    <header>
      <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-education" aria-hidden="true"></span> Panda Online</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="#">Luyện Tập </a></li>
                        <li class="active"><a href="#">Kiểm Tra<span class="sr-only">(current)</span></a></li>
                        <li><a href="#">Kỹ Năng Sống</a></li>
                        <li><a href="#">Phụ Huynh</a></li>
                    </ul>
                    <form class="navbar-form navbar-right">
                        <button type="submit" class="btn btn-success">
                            <span class="glyphicon glyphicon-user" aria-hidden="true"></span> Đăng nhập</button>
                        <button type="submit" class="btn btn-danger">
                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Đăng ký</button>
                    </form>
                </div>
            </div>
        </nav>
    </header>
    <section>
      <question-detail></question-detail>
    </section>
    
  `,
})
export class AppComponent {

}
