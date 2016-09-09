.class Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/home/ui/widget/FocusImageViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/baidu/home/ui/widget/FocusImageViewGroup;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    const-wide/16 v6, 0xbb8

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/home/ui/widget/FocusImageViewGroup;

    if-eqz p1, :cond_11

    if-nez v0, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_74

    goto :goto_11

    :pswitch_18
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_27

    invoke-virtual {v0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->moveToNext()V

    :cond_27
    invoke-virtual {p0, v1}, Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v7}, Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_11

    :pswitch_2f
    invoke-static {v0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->a(Lcom/baidu/home/ui/widget/FocusImageViewGroup;)I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_3d

    invoke-static {v0, v2}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->a(Lcom/baidu/home/ui/widget/FocusImageViewGroup;I)I

    invoke-virtual {p0, v5}, Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;->removeMessages(I)V

    goto :goto_11

    :cond_3d
    invoke-static {v0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->b(Lcom/baidu/home/ui/widget/FocusImageViewGroup;)I

    move-result v0

    if-lt v0, v1, :cond_67

    :goto_43
    invoke-static {}, Lcom/baidu/home/ui/widget/FocusImageViewGroup;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/home/ui/widget/FocusImageViewGroup$c;

    invoke-static {v0}, Lcom/baidu/home/ui/widget/FocusImageViewGroup$c;->a(Lcom/baidu/home/ui/widget/FocusImageViewGroup$c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    :goto_61
    if-eqz v2, :cond_69

    invoke-virtual {p0, v5}, Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;->removeMessages(I)V

    goto :goto_11

    :cond_67
    move v1, v2

    goto :goto_43

    :cond_69
    invoke-virtual {p0, v5}, Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v7}, Lcom/baidu/home/ui/widget/FocusImageViewGroup$d;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_11

    :cond_71
    move v2, v1

    goto :goto_61

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_18
        :pswitch_2f
    .end packed-switch
.end method
