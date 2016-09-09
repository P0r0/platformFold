.class Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface$4;
.super Ljava/lang/Object;
.source "H5PayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;


# direct methods
.method constructor <init>(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface$4;->this$1:Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 323
    return-void
.end method
