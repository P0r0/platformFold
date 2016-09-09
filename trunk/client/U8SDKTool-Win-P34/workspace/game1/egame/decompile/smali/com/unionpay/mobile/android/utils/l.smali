.class final Lcom/unionpay/mobile/android/utils/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/utils/k;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/utils/k;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/utils/l;->a:Lcom/unionpay/mobile/android/utils/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    :cond_5
    :goto_5
    const/4 v0, 0x1

    return v0

    :pswitch_7
    iget-object v0, p0, Lcom/unionpay/mobile/android/utils/l;->a:Lcom/unionpay/mobile/android/utils/k;

    invoke-static {v0}, Lcom/unionpay/mobile/android/utils/k;->a(Lcom/unionpay/mobile/android/utils/k;)Lcom/unionpay/mobile/android/nocard/views/b;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unionpay/mobile/android/utils/l;->a:Lcom/unionpay/mobile/android/utils/k;

    invoke-static {v0}, Lcom/unionpay/mobile/android/utils/k;->a(Lcom/unionpay/mobile/android/utils/k;)Lcom/unionpay/mobile/android/nocard/views/b;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/nocard/views/l;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/nocard/views/l;->u()V

    goto :goto_5

    :pswitch_1b
    iget-object v0, p0, Lcom/unionpay/mobile/android/utils/l;->a:Lcom/unionpay/mobile/android/utils/k;

    invoke-static {v0}, Lcom/unionpay/mobile/android/utils/k;->a(Lcom/unionpay/mobile/android/utils/k;)Lcom/unionpay/mobile/android/nocard/views/b;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unionpay/mobile/android/utils/l;->a:Lcom/unionpay/mobile/android/utils/k;

    invoke-static {v0}, Lcom/unionpay/mobile/android/utils/k;->a(Lcom/unionpay/mobile/android/utils/k;)Lcom/unionpay/mobile/android/nocard/views/b;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/nocard/views/l;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/nocard/views/l;->u()V

    goto :goto_5

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1b
    .end packed-switch
.end method
