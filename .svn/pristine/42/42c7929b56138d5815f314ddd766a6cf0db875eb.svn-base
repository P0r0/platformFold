.class Lmobisocial/omlib/ui/signin/SignInFragment$2;
.super Landroid/webkit/WebViewClient;
.source "SignInFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/ui/signin/SignInFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/ui/signin/SignInFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlib/ui/signin/SignInFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/ui/signin/SignInFragment;

    .prologue
    .line 152
    iput-object p1, p0, Lmobisocial/omlib/ui/signin/SignInFragment$2;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 156
    const-string v1, "embedded://auth"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 157
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 158
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lmobisocial/omlib/ui/signin/SignInFragment$2;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    const-string v2, "code"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lmobisocial/omlib/ui/signin/SignInFragment;->mAuthCode:Ljava/lang/String;
    invoke-static {v1, v2}, Lmobisocial/omlib/ui/signin/SignInFragment;->access$802(Lmobisocial/omlib/ui/signin/SignInFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    iget-object v1, p0, Lmobisocial/omlib/ui/signin/SignInFragment$2;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    invoke-virtual {v1}, Lmobisocial/omlib/ui/signin/SignInFragment;->confirmAuthCode()V

    .line 160
    const/4 v1, 0x1

    .line 162
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method
