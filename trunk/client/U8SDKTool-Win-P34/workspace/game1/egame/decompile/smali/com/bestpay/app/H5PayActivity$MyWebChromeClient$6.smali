.class Lcom/bestpay/app/H5PayActivity$MyWebChromeClient$6;
.super Ljava/lang/Object;
.source "H5PayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;

.field private final synthetic val$paramJsPromptResult:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;Landroid/webkit/JsPromptResult;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient$6;->this$1:Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;

    iput-object p2, p0, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient$6;->val$paramJsPromptResult:Landroid/webkit/JsPromptResult;

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "paramAnonymousDialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "paramAnonymousInt"    # I

    .prologue
    .line 537
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient$6;->val$paramJsPromptResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 538
    return-void
.end method
