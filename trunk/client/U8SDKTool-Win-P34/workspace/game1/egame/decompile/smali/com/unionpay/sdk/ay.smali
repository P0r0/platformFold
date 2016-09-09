.class final Lcom/unionpay/sdk/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic a:Lcom/unionpay/sdk/ao;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/unionpay/sdk/ao;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/unionpay/sdk/ay;->a:Lcom/unionpay/sdk/ao;

    iput-object p2, p0, Lcom/unionpay/sdk/ay;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/unionpay/sdk/ay;->a:Lcom/unionpay/sdk/ao;

    invoke-interface {v0, p2}, Lcom/unionpay/sdk/ao;->a(Ljava/lang/reflect/Method;)V

    iget-object v0, p0, Lcom/unionpay/sdk/ay;->b:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/sdk/ay;->a:Lcom/unionpay/sdk/ao;

    return-object v0
.end method
