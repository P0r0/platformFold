.class Lcom/alipay/sdk/auth/AuthActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/auth/AuthActivity;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/auth/AuthActivity;)V
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lcom/alipay/sdk/auth/AuthActivity$3;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity$3;->a:Lcom/alipay/sdk/auth/AuthActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/sdk/auth/AuthActivity;->b(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)V

    .line 126
    return-void
.end method
