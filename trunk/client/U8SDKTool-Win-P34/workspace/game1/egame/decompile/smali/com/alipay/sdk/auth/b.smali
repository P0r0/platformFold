.class final Lcom/alipay/sdk/auth/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/sdk/authjs/c;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/auth/AuthActivity;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/auth/AuthActivity;)V
    .registers 2

    .prologue
    .line 319
    iput-object p1, p0, Lcom/alipay/sdk/auth/b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/sdk/authjs/a;)V
    .registers 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/alipay/sdk/auth/b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {v0, p1}, Lcom/alipay/sdk/auth/AuthActivity;->a(Lcom/alipay/sdk/auth/AuthActivity;Lcom/alipay/sdk/authjs/a;)V

    .line 325
    return-void
.end method
