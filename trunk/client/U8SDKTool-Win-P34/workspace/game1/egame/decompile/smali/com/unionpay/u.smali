.class final Lcom/unionpay/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/ab;


# instance fields
.field final synthetic a:Lcom/unionpay/UPPayWapActivity;


# direct methods
.method constructor <init>(Lcom/unionpay/UPPayWapActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/u;->a:Lcom/unionpay/UPPayWapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/unionpay/ac;)V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/u;->a:Lcom/unionpay/UPPayWapActivity;

    invoke-virtual {v0}, Lcom/unionpay/UPPayWapActivity;->finish()V

    const-string v0, ""

    invoke-static {v0}, Lcom/unionpay/UPPayAssistEx;->a(Ljava/lang/String;)V

    return-void
.end method
