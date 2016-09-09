.class Lcom/bestpay/app/H5PayActivity$MyWebChromeClient$3;
.super Ljava/lang/Object;
.source "H5PayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;

.field private final synthetic val$paramJsResult:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient$3;->this$1:Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;

    iput-object p2, p0, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient$3;->val$paramJsResult:Landroid/webkit/JsResult;

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "paramAnonymousDialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "paramAnonymousInt"    # I

    .prologue
    .line 502
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient$3;->val$paramJsResult:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 503
    return-void
.end method
