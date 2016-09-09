.class public Lcom/duoku/platform/ui/DKDownloadManagerActivity$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/ui/DKDownloadManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field private a:Lcom/duoku/platform/ui/DKDownloadManagerActivity;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/ui/DKDownloadManagerActivity;)V
    .registers 4

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity$PackageIntentReceiver;->a:Lcom/duoku/platform/ui/DKDownloadManagerActivity;

    .line 132
    if-nez p1, :cond_8

    .line 151
    :goto_7
    return-void

    .line 136
    :cond_8
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "duoku.platform.download.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 137
    const-string v1, "duoku.platform.download.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1, p0, v0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    const-string v1, "duoku.platform.download.intent.action.DOWNLOAD_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1, p0, v0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    const-string v1, "duoku.platform.download.intent.action.INSTALL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1, p0, v0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "duoku.platform.download.intent.action.IGNORED_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1, p0, v0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_7
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity$PackageIntentReceiver;->a:Lcom/duoku/platform/ui/DKDownloadManagerActivity;

    if-nez v0, :cond_6

    .line 182
    :cond_5
    :goto_5
    return-void

    .line 160
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 161
    const-string v1, "duoku.platform.download.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 163
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity$PackageIntentReceiver;->a:Lcom/duoku/platform/ui/DKDownloadManagerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->a(Z)V

    goto :goto_5

    .line 165
    :cond_19
    const-string v1, "duoku.platform.download.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 167
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity$PackageIntentReceiver;->a:Lcom/duoku/platform/ui/DKDownloadManagerActivity;

    invoke-virtual {v0, v2}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->a(Z)V

    goto :goto_5

    .line 169
    :cond_27
    const-string v1, "duoku.platform.download.intent.action.DOWNLOAD_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 171
    const-string v0, "download_arg"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 172
    iget-object v1, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity$PackageIntentReceiver;->a:Lcom/duoku/platform/ui/DKDownloadManagerActivity;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->b(Z)V

    goto :goto_5

    .line 174
    :cond_3b
    const-string v1, "duoku.platform.download.intent.action.INSTALL_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 176
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity$PackageIntentReceiver;->a:Lcom/duoku/platform/ui/DKDownloadManagerActivity;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->a()V

    goto :goto_5

    .line 178
    :cond_49
    const-string v1, "duoku.platform.download.intent.action.IGNORED_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 180
    const-string v0, "ignored_state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    goto :goto_5
.end method
