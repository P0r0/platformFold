.class public Lmobisocial/omlib/ui/signin/SignInFragment;
.super Landroid/app/Fragment;
.source "SignInFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/ui/signin/SignInFragment$SignInActivityCallbacks;
    }
.end annotation


# static fields
.field static final AUTH_REDIRECT:Ljava/lang/String; = "embedded://auth"

.field public static final CHAT_SCOPE_KEY:Ljava/lang/String; = "chatscope"

.field public static final EXTRA_FLOW:Ljava/lang/String; = "flow"

.field public static final EXTRA_PARTNER:Ljava/lang/String; = "partner"

.field public static final EXTRA_SSO_TOKEN:Ljava/lang/String; = "sso_token"

.field public static final EXTRA_SSO_TYPE:Ljava/lang/String; = "sso_type"

.field private static final TAG:Ljava/lang/String; = "SignInFragment"


# instance fields
.field private mAuthCode:Ljava/lang/String;

.field private mCallbackHandler:Lmobisocial/omlib/ui/signin/SignInFragment$SignInActivityCallbacks;

.field private mConfirmTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mFlow:Ljava/lang/String;

.field private mOmletHelper:Lmobisocial/omlib/api/OmletApiManager;

.field private mPartner:Ljava/lang/String;

.field private mQueryKey:Ljava/lang/String;

.field private mSSO_Token:Ljava/lang/String;

.field private mSSO_Type:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 252
    return-void
.end method

.method private IsValidSSO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 10
    .param p1, "sso_type"    # Ljava/lang/String;
    .param p2, "sso_token"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 199
    if-eqz p1, :cond_6

    if-nez p2, :cond_b

    .line 200
    :cond_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 208
    :goto_a
    return-object v2

    .line 202
    :cond_b
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "bdgamesdk"

    aput-object v2, v1, v3

    .line 203
    .local v1, "valid_sso_types":[Ljava/lang/String;
    array-length v4, v1

    move v2, v3

    :goto_13
    if-ge v2, v4, :cond_25

    aget-object v0, v1, v2

    .line 204
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 205
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_a

    .line 203
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 208
    .end local v0    # "type":Ljava/lang/String;
    :cond_25
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_a
.end method

.method static synthetic access$000(Lmobisocial/omlib/ui/signin/SignInFragment;)Lmobisocial/omlib/ui/signin/SignInFragment$SignInActivityCallbacks;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/ui/signin/SignInFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mCallbackHandler:Lmobisocial/omlib/ui/signin/SignInFragment$SignInActivityCallbacks;

    return-object v0
.end method

.method static synthetic access$100(Lmobisocial/omlib/ui/signin/SignInFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/ui/signin/SignInFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mSSO_Type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lmobisocial/omlib/ui/signin/SignInFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/ui/signin/SignInFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mSSO_Token:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lmobisocial/omlib/ui/signin/SignInFragment;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4
    .param p0, "x0"    # Lmobisocial/omlib/ui/signin/SignInFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lmobisocial/omlib/ui/signin/SignInFragment;->IsValidSSO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lmobisocial/omlib/ui/signin/SignInFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/ui/signin/SignInFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mPartner:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lmobisocial/omlib/ui/signin/SignInFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/ui/signin/SignInFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mFlow:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lmobisocial/omlib/ui/signin/SignInFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/ui/signin/SignInFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mQueryKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lmobisocial/omlib/ui/signin/SignInFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/ui/signin/SignInFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mQueryKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lmobisocial/omlib/ui/signin/SignInFragment;)Landroid/webkit/WebView;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/ui/signin/SignInFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$800(Lmobisocial/omlib/ui/signin/SignInFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/ui/signin/SignInFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mAuthCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lmobisocial/omlib/ui/signin/SignInFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/ui/signin/SignInFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mAuthCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lmobisocial/omlib/ui/signin/SignInFragment;)Lmobisocial/omlib/api/OmletApiManager;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/ui/signin/SignInFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mOmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    return-object v0
.end method


# virtual methods
.method public confirmAuthCode()V
    .registers 4

    .prologue
    .line 212
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mConfirmTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_a

    .line 213
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mConfirmTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 215
    :cond_a
    new-instance v0, Lmobisocial/omlib/ui/signin/SignInFragment$5;

    invoke-direct {v0, p0}, Lmobisocial/omlib/ui/signin/SignInFragment$5;-><init>(Lmobisocial/omlib/ui/signin/SignInFragment;)V

    iput-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mConfirmTask:Landroid/os/AsyncTask;

    .line 249
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mConfirmTask:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 250
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 72
    :try_start_3
    move-object v0, p1

    check-cast v0, Lmobisocial/omlib/ui/signin/SignInFragment$SignInActivityCallbacks;

    move-object v2, v0

    iput-object v2, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mCallbackHandler:Lmobisocial/omlib/ui/signin/SignInFragment$SignInActivityCallbacks;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_9} :catch_a

    .line 76
    return-void

    .line 73
    :catch_a
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement SignInActivityCallbacks"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-static {}, Lmobisocial/omlib/api/OmletApiManager;->getInstance()Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mOmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    .line 82
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mOmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {p0}, Lmobisocial/omlib/ui/signin/SignInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->connect(Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mOmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlib/ui/signin/SignInFragment$1;

    invoke-direct {v1, p0}, Lmobisocial/omlib/ui/signin/SignInFragment$1;-><init>(Lmobisocial/omlib/ui/signin/SignInFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 138
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-virtual {p0}, Lmobisocial/omlib/ui/signin/SignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 143
    invoke-virtual {p0}, Lmobisocial/omlib/ui/signin/SignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sso_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mSSO_Type:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lmobisocial/omlib/ui/signin/SignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sso_token"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mSSO_Token:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lmobisocial/omlib/ui/signin/SignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "partner"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mPartner:Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Lmobisocial/omlib/ui/signin/SignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "flow"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mFlow:Ljava/lang/String;

    .line 148
    :cond_36
    invoke-virtual {p0}, Lmobisocial/omlib/ui/signin/SignInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "oml_sign_in_fragment_layout"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lmobisocial/omlib/ui/signin/SignInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "webview"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mWebView:Landroid/webkit/WebView;

    .line 150
    iget-object v1, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 151
    iget-object v1, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 152
    iget-object v1, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lmobisocial/omlib/ui/signin/SignInFragment$2;

    invoke-direct {v2, p0}, Lmobisocial/omlib/ui/signin/SignInFragment$2;-><init>(Lmobisocial/omlib/ui/signin/SignInFragment;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 165
    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 195
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mOmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {p0}, Lmobisocial/omlib/ui/signin/SignInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->disconnect(Landroid/content/Context;)V

    .line 196
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 171
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mOmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlib/ui/signin/SignInFragment$3;

    invoke-direct {v1, p0}, Lmobisocial/omlib/ui/signin/SignInFragment$3;-><init>(Lmobisocial/omlib/ui/signin/SignInFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 178
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 183
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment;->mOmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlib/ui/signin/SignInFragment$4;

    invoke-direct {v1, p0}, Lmobisocial/omlib/ui/signin/SignInFragment$4;-><init>(Lmobisocial/omlib/ui/signin/SignInFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 190
    return-void
.end method
