.class final Lcom/alipay/sdk/app/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/H5PayActivity$a;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/H5PayActivity$a;)V
    .registers 2

    .prologue
    .line 302
    iput-object p1, p0, Lcom/alipay/sdk/app/k;->a:Lcom/alipay/sdk/app/H5PayActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/alipay/sdk/app/k;->a:Lcom/alipay/sdk/app/H5PayActivity$a;

    iget-object v0, v0, Lcom/alipay/sdk/app/H5PayActivity$a;->a:Lcom/alipay/sdk/app/H5PayActivity;

    invoke-virtual {v0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    .line 306
    return-void
.end method
