.class public Lcom/vivo/upgrade/utils/SharePreferenceManager;
.super Lcom/vivo/upgrade/utils/BaseSharePreference;
.source "SharePreferenceManager.java"


# static fields
.field private static final SHARED_PREFS_FILE_NAME:Ljava/lang/String; = "com.vivo.upgrade_preferences"

.field private static mManger:Lcom/vivo/upgrade/utils/SharePreferenceManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/vivo/upgrade/utils/BaseSharePreference;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/vivo/upgrade/utils/SharePreferenceManager;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/vivo/upgrade/utils/SharePreferenceManager;->mManger:Lcom/vivo/upgrade/utils/SharePreferenceManager;

    if-nez v0, :cond_b

    .line 19
    new-instance v0, Lcom/vivo/upgrade/utils/SharePreferenceManager;

    invoke-direct {v0}, Lcom/vivo/upgrade/utils/SharePreferenceManager;-><init>()V

    sput-object v0, Lcom/vivo/upgrade/utils/SharePreferenceManager;->mManger:Lcom/vivo/upgrade/utils/SharePreferenceManager;

    .line 22
    :cond_b
    sget-object v0, Lcom/vivo/upgrade/utils/SharePreferenceManager;->mManger:Lcom/vivo/upgrade/utils/SharePreferenceManager;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vivo/upgrade/utils/SharePreferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_b

    .line 28
    iput-object p1, p0, Lcom/vivo/upgrade/utils/SharePreferenceManager;->mContext:Landroid/content/Context;

    .line 29
    const-string v0, "com.vivo.upgrade_preferences"

    invoke-virtual {p0, p1, v0}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    :cond_b
    return-void
.end method
