.class final Lcom/alipay/sdk/app/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/H5AuthActivity$a;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/H5AuthActivity$a;)V
    .registers 2

    .prologue
    .line 271
    iput-object p1, p0, Lcom/alipay/sdk/app/f;->a:Lcom/alipay/sdk/app/H5AuthActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/alipay/sdk/app/f;->a:Lcom/alipay/sdk/app/H5AuthActivity$a;

    iget-object v0, v0, Lcom/alipay/sdk/app/H5AuthActivity$a;->a:Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-virtual {v0}, Lcom/alipay/sdk/app/H5AuthActivity;->finish()V

    .line 275
    return-void
.end method
