.class final Lcom/bbk/payment/b;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/bbk/payment/CardActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/CardActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/b;->a:Lcom/bbk/payment/CardActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/bbk/payment/b;->a:Lcom/bbk/payment/CardActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bbk/payment/CardActivity;->b(Lcom/bbk/payment/CardActivity;Z)V

    return-void
.end method
