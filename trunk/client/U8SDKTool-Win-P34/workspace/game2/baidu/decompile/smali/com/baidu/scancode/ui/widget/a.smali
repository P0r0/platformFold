.class Lcom/baidu/scancode/ui/widget/a;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic a:Lcom/baidu/scancode/ui/widget/ShapeProgressBar;


# direct methods
.method constructor <init>(Lcom/baidu/scancode/ui/widget/ShapeProgressBar;JJ)V
    .registers 6

    iput-object p1, p0, Lcom/baidu/scancode/ui/widget/a;->a:Lcom/baidu/scancode/ui/widget/ShapeProgressBar;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/scancode/ui/widget/a;->a:Lcom/baidu/scancode/ui/widget/ShapeProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/scancode/ui/widget/ShapeProgressBar;->a(Lcom/baidu/scancode/ui/widget/ShapeProgressBar;I)V

    iget-object v0, p0, Lcom/baidu/scancode/ui/widget/a;->a:Lcom/baidu/scancode/ui/widget/ShapeProgressBar;

    invoke-static {v0}, Lcom/baidu/scancode/ui/widget/ShapeProgressBar;->a(Lcom/baidu/scancode/ui/widget/ShapeProgressBar;)Lcom/baidu/scancode/ui/widget/ShapeProgressBar$a;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/baidu/scancode/ui/widget/a;->a:Lcom/baidu/scancode/ui/widget/ShapeProgressBar;

    invoke-static {v0}, Lcom/baidu/scancode/ui/widget/ShapeProgressBar;->a(Lcom/baidu/scancode/ui/widget/ShapeProgressBar;)Lcom/baidu/scancode/ui/widget/ShapeProgressBar$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/scancode/ui/widget/ShapeProgressBar$a;->a()V

    :cond_17
    return-void
.end method

.method public onTick(J)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/scancode/ui/widget/a;->a:Lcom/baidu/scancode/ui/widget/ShapeProgressBar;

    long-to-int v1, p1

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit8 v1, v1, 0x64

    div-int/lit8 v1, v1, 0x3c

    invoke-static {v0, v1}, Lcom/baidu/scancode/ui/widget/ShapeProgressBar;->a(Lcom/baidu/scancode/ui/widget/ShapeProgressBar;I)V

    return-void
.end method
