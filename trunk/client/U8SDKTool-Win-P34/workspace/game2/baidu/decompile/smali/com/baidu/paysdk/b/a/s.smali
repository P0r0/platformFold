.class public Lcom/baidu/paysdk/b/a/s;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Lcom/baidu/paysdk/b/a/a;
    .registers 2

    packed-switch p0, :pswitch_data_1e

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    new-instance v0, Lcom/baidu/paysdk/b/a/b;

    invoke-direct {v0}, Lcom/baidu/paysdk/b/a/b;-><init>()V

    goto :goto_4

    :pswitch_b
    new-instance v0, Lcom/baidu/paysdk/b/a/j;

    invoke-direct {v0}, Lcom/baidu/paysdk/b/a/j;-><init>()V

    goto :goto_4

    :pswitch_11
    new-instance v0, Lcom/baidu/paysdk/b/a/h;

    invoke-direct {v0}, Lcom/baidu/paysdk/b/a/h;-><init>()V

    goto :goto_4

    :pswitch_17
    new-instance v0, Lcom/baidu/paysdk/b/a/q;

    invoke-direct {v0}, Lcom/baidu/paysdk/b/a/q;-><init>()V

    goto :goto_4

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_b
        :pswitch_11
        :pswitch_17
    .end packed-switch
.end method
