.class final Lcom/bbk/payment/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;


# direct methods
.method constructor <init>(Lcom/bbk/payment/PaymentRechargeActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .registers 3

    const-string v0, "PaymentRechargeActivity"

    const-string v1, "CancelClickListener, onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
