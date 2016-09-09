.class public final Lcom/vivo/sdkplugin/adapter/GameInfoConstants;
.super Ljava/lang/Object;


# static fields
.field public static final DATA_TYPE_HUANJU_NEWS:I = 0x4

.field public static final DATA_TYPE_HUANJU_STRATEGY:I = 0x5

.field public static final DATA_TYPE_VIVO_ACTIVITY:I = 0x1

.field public static final DATA_TYPE_VIVO_BBS:I = 0x6

.field public static final DATA_TYPE_VIVO_GIFT:I = 0x3

.field public static final DATA_TYPE_VIVO_NEWSERVER:I = 0x2

.field public static HAS_HUANJUN:Z = false

.field public static final HJ_NEWS_SIZE:I = 0xa

.field public static final HJ_STRATEGY_SIZE:I = 0xa

.field public static HUANJU_TAG_NEWS:Ljava/lang/String; = null

.field public static HUANJU_TAG_STRATEGY:Ljava/lang/String; = null

.field public static HUANJU_TAG_VIDEO:Ljava/lang/String; = null

.field public static final LOGO_DATA_HUANJU_TAG:Ljava/lang/String; = "huanju"

.field public static final LOGO_DATA_VIVO_TAG:Ljava/lang/String; = "vivo"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "disallow"

    sput-object v0, Lcom/vivo/sdkplugin/adapter/GameInfoConstants;->HUANJU_TAG_NEWS:Ljava/lang/String;

    const-string v0, "disallow"

    sput-object v0, Lcom/vivo/sdkplugin/adapter/GameInfoConstants;->HUANJU_TAG_STRATEGY:Ljava/lang/String;

    const-string v0, "disallow"

    sput-object v0, Lcom/vivo/sdkplugin/adapter/GameInfoConstants;->HUANJU_TAG_VIDEO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasHJNews()Z
    .registers 3

    const/4 v0, 0x0

    sget-object v1, Lcom/vivo/sdkplugin/adapter/GameInfoConstants;->HUANJU_TAG_NEWS:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, Lcom/vivo/sdkplugin/adapter/GameInfoConstants;->HUANJU_TAG_NEWS:Ljava/lang/String;

    const-string v2, "allow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public static hasHJStrategy()Z
    .registers 3

    const/4 v0, 0x0

    sget-object v1, Lcom/vivo/sdkplugin/adapter/GameInfoConstants;->HUANJU_TAG_STRATEGY:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, Lcom/vivo/sdkplugin/adapter/GameInfoConstants;->HUANJU_TAG_STRATEGY:Ljava/lang/String;

    const-string v2, "allow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public static read(Landroid/content/Context;)V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "VivoBaseAccount"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.vivo.game.HAS_HJ_KEY"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/vivo/sdkplugin/adapter/GameInfoConstants;->HAS_HUANJUN:Z

    const-string v1, "com.vivo.game.HAS_HJ_NEWS_KEY"

    const-string v2, "disallow"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vivo/sdkplugin/adapter/GameInfoConstants;->HUANJU_TAG_NEWS:Ljava/lang/String;

    const-string v1, "com.vivo.game.HAS_HJ_STRATEGY_KEY"

    const-string v2, "disallow"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/sdkplugin/adapter/GameInfoConstants;->HUANJU_TAG_STRATEGY:Ljava/lang/String;

    return-void
.end method

.method public static save(Landroid/content/Context;)V
    .registers 4

    const-string v0, "VivoBaseAccount"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.vivo.game.HAS_HJ_KEY"

    sget-boolean v2, Lcom/vivo/sdkplugin/adapter/GameInfoConstants;->HAS_HUANJUN:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.vivo.game.HAS_HJ_NEWS_KEY"

    sget-object v2, Lcom/vivo/sdkplugin/adapter/GameInfoConstants;->HUANJU_TAG_NEWS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.vivo.game.HAS_HJ_STRATEGY_KEY"

    sget-object v2, Lcom/vivo/sdkplugin/adapter/GameInfoConstants;->HUANJU_TAG_STRATEGY:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
