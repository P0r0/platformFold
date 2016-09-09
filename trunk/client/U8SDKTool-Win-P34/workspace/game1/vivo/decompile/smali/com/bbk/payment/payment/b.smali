.class final Lcom/bbk/payment/payment/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/bbk/payment/payment/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bbk/payment/payment/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bbk/payment/payment/b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    new-instance v0, Lcom/bbk/payment/PaymentActionDetailsInit;

    iget-object v1, p0, Lcom/bbk/payment/payment/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bbk/payment/payment/b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/bbk/payment/payment/b;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/bbk/payment/PaymentActionDetailsInit;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
