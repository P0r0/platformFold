.class Lcom/alipay/sdk/app/H5PayActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/H5PayActivity;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/H5PayActivity;)V
    .registers 2

    .prologue
    .line 357
    iput-object p1, p0, Lcom/alipay/sdk/app/H5PayActivity$1;->a:Lcom/alipay/sdk/app/H5PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity$1;->a:Lcom/alipay/sdk/app/H5PayActivity;

    invoke-static {v0}, Lcom/alipay/sdk/app/H5PayActivity;->d(Lcom/alipay/sdk/app/H5PayActivity;)V

    .line 362
    return-void
.end method
