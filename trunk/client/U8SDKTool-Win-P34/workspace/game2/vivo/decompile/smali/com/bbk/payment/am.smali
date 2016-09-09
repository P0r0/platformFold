.class final Lcom/bbk/payment/am;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/bbk/payment/al;


# direct methods
.method constructor <init>(Lcom/bbk/payment/al;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/am;->a:Lcom/bbk/payment/al;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/bbk/payment/am;->a:Lcom/bbk/payment/al;

    invoke-static {v0}, Lcom/bbk/payment/al;->a(Lcom/bbk/payment/al;)Lcom/bbk/payment/RechargeChoiceActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bbk/payment/RechargeChoiceActivity;->a(Lcom/bbk/payment/RechargeChoiceActivity;Z)V

    return-void
.end method
