.class final Lcom/alipay/sdk/app/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/H5AuthActivity;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/H5AuthActivity;)V
    .registers 2

    .prologue
    .line 302
    iput-object p1, p0, Lcom/alipay/sdk/app/b;->a:Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->a:Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-static {v0}, Lcom/alipay/sdk/app/H5AuthActivity;->f(Lcom/alipay/sdk/app/H5AuthActivity;)V

    .line 307
    return-void
.end method
