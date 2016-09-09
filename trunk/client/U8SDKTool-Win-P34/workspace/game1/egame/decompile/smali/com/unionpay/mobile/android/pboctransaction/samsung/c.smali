.class final Lcom/unionpay/mobile/android/pboctransaction/samsung/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pboctransaction/samsung/b;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/c;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    :goto_5
    const/4 v0, 0x1

    return v0

    :pswitch_7
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/c;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;Z)V

    goto :goto_5

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method
