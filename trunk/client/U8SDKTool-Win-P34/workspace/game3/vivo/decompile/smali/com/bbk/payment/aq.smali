.class final Lcom/bbk/payment/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/RechargeChoiceActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/RechargeChoiceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/aq;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/bbk/payment/aq;->a:Lcom/bbk/payment/RechargeChoiceActivity;

    sget v1, Lcom/bbk/payment/RechargeChoiceActivity;->mRechargeResult:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/RechargeChoiceActivity;->a(Lcom/bbk/payment/RechargeChoiceActivity;ILandroid/os/Bundle;)V

    return-void
.end method
