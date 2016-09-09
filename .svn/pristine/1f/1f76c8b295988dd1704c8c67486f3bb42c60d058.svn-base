.class public Lcom/baidu/android/pushservice/richmedia/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/richmedia/m$1;
    }
.end annotation


# direct methods
.method public static a(Lcom/baidu/android/pushservice/richmedia/l$a;Ljava/lang/String;)Lcom/baidu/android/pushservice/richmedia/l;
    .registers 6

    new-instance v0, Lcom/baidu/android/pushservice/richmedia/l;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/richmedia/l;-><init>()V

    invoke-virtual {v0, p0}, Lcom/baidu/android/pushservice/richmedia/l;->a(Lcom/baidu/android/pushservice/richmedia/l$a;)V

    sget-object v1, Lcom/baidu/android/pushservice/richmedia/m$1;->a:[I

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/richmedia/l$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_36

    const-string v1, "RequestFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal request type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    return-object v0

    :pswitch_2c
    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/richmedia/l;->b(Ljava/lang/String;)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/richmedia/l;->a(Ljava/lang/String;)V

    goto :goto_2b

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method
