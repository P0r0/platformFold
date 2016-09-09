.class final Lcom/bbk/payment/D;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/bbk/payment/JCardActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/JCardActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/D;->a:Lcom/bbk/payment/JCardActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/bbk/payment/D;->a:Lcom/bbk/payment/JCardActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bbk/payment/JCardActivity;->b(Lcom/bbk/payment/JCardActivity;Z)V

    return-void
.end method
