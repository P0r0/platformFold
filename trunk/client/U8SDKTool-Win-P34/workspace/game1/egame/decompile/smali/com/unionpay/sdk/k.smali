.class final Lcom/unionpay/sdk/k;
.super Ljava/lang/ThreadLocal;


# instance fields
.field final synthetic a:Lcom/unionpay/sdk/OttoBus;


# direct methods
.method constructor <init>(Lcom/unionpay/sdk/OttoBus;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/sdk/k;->a:Lcom/unionpay/sdk/OttoBus;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
