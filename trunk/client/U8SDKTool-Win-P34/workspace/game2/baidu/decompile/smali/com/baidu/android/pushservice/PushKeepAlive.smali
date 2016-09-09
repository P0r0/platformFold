.class public Lcom/baidu/android/pushservice/PushKeepAlive;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/PushKeepAlive$a;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/android/pushservice/PushKeepAlive$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/baidu/android/pushservice/PushKeepAlive$a;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/PushKeepAlive$a;-><init>(Lcom/baidu/android/pushservice/PushKeepAlive;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushKeepAlive;->a:Lcom/baidu/android/pushservice/PushKeepAlive$a;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/PushKeepAlive;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushKeepAlive;->a:Lcom/baidu/android/pushservice/PushKeepAlive$a;

    const/4 v1, 0x0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/android/pushservice/PushKeepAlive$a;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/PushKeepAlive;->finish()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
