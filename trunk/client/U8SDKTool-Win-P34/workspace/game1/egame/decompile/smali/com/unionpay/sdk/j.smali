.class final Lcom/unionpay/sdk/j;
.super Ljava/lang/ThreadLocal;


# instance fields
.field final synthetic a:Lcom/unionpay/sdk/OttoBus;


# direct methods
.method constructor <init>(Lcom/unionpay/sdk/OttoBus;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/sdk/j;->a:Lcom/unionpay/sdk/OttoBus;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .registers 2

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    return-object v0
.end method
