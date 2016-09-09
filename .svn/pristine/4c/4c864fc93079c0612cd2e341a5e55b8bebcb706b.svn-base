.class public Lcom/baidu/home/WalletHomeActivityVip;
.super Lcom/baidu/wallet/core/plugins/pluginfake/PluginBeanActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/home/WalletHomeActivityVip$a;,
        Lcom/baidu/home/WalletHomeActivityVip$d;,
        Lcom/baidu/home/WalletHomeActivityVip$c;,
        Lcom/baidu/home/WalletHomeActivityVip$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

.field private c:Landroid/widget/ScrollView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/baidu/home/WalletHomeActivityVip$c;

.field private f:Lcom/baidu/home/WalletHomeActivityVip$a;

.field private g:Lcom/baidu/home/WalletHomeActivityVip$d;

.field private h:Landroid/widget/FrameLayout;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/baidu/wallet/base/widget/NetImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/home/WalletHomeActivityVip;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/home/WalletHomeActivityVip;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/wallet/core/plugins/pluginfake/PluginBeanActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lcom/baidu/home/WalletHomeActivityVip;Ljava/lang/String;)J
    .registers 4

    invoke-direct {p0, p1}, Lcom/baidu/home/WalletHomeActivityVip;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/baidu/home/WalletHomeActivityVip;)Lcom/baidu/home/datamodel/HomeCfgResponseVip;
    .registers 2

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/baidu/home/WalletHomeActivityVip;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p1}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v0

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginType()I

    move-result v1

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/base/datamodel/AccountManager;->saveBdussOrToken(ILjava/lang/String;)V

    :goto_21
    return-void

    :cond_22
    invoke-static {p1}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->logout()V

    goto :goto_21
.end method

.method private a(Lcom/baidu/home/datamodel/HomeCfgResponseVip;)V
    .registers 13

    const/4 v4, 0x2

    const/4 v1, -0x1

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p1}, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->getTitleInfo()Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;

    move-result-object v2

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v3, "bdactionbar"

    invoke-static {v0, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/home/WalletHomeActivityVip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/BdActionBar;

    iget-object v3, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v5, "wallet_home_title_safe_tip"

    invoke-static {v3, v5}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitleCenterSafeTipText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    invoke-static {v3}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/wallet/base/datamodel/AccountManager;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_279

    if-eqz v2, :cond_d1

    iget-object v3, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_title:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1ac

    iget-object v3, p0, Lcom/baidu/home/WalletHomeActivityVip;->i:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_title:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_title_color:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_56

    :try_start_4b
    iget-object v3, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_title_color:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/baidu/home/WalletHomeActivityVip;->a(Ljava/lang/String;)I

    move-result v3

    iget-object v5, p0, Lcom/baidu/home/WalletHomeActivityVip;->i:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_56} :catch_18f

    :cond_56
    :goto_56
    iget-object v3, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_level:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d2

    iget-object v3, p0, Lcom/baidu/home/WalletHomeActivityVip;->j:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_level:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_level_color:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_78

    :try_start_6d
    iget-object v3, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_level_color:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/baidu/home/WalletHomeActivityVip;->a(Ljava/lang/String;)I

    move-result v3

    iget-object v5, p0, Lcom/baidu/home/WalletHomeActivityVip;->j:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_78} :catch_1b5

    :cond_78
    :goto_78
    iget-object v3, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f8

    iget-object v3, p0, Lcom/baidu/home/WalletHomeActivityVip;->k:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_name_color:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9a

    :try_start_8f
    iget-object v3, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_name_color:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/baidu/home/WalletHomeActivityVip;->a(Ljava/lang/String;)I

    move-result v3

    iget-object v5, p0, Lcom/baidu/home/WalletHomeActivityVip;->k:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_9a} :catch_1db

    :cond_9a
    :goto_9a
    iget-object v3, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->safe_title:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a7

    iget-object v3, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->safe_title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitleCenterSafeTipText(Ljava/lang/String;)V

    :cond_a7
    iget-object v0, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->bkImage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d1

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->android_prefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d1

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->l:Lcom/baidu/wallet/base/widget/NetImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->android_prefix:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->bkImage:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/base/widget/NetImageView;->setImageUrl(Ljava/lang/String;)V

    :cond_d1
    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->n:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v3, "wallet_home_login_cashback_default"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->user:Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;

    if-eqz v0, :cond_100

    const-string v2, "0"

    iget-object v3, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->is_login:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_100

    iget-object v2, p0, Lcom/baidu/home/WalletHomeActivityVip;->n:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/baidu/home/WalletHomeActivityVip;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_100
    if-eqz v0, :cond_8

    const-string v2, "1"

    iget-object v3, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->is_login:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->cashback:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CashBack;

    if-eqz v0, :cond_8

    iget-object v2, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$CashBack;->cashback_desc:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$CashBack;->cashback_desc:Ljava/lang/String;

    const-string v0, ""

    :try_start_11c
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_462

    array-length v2, v5

    if-lez v2, :cond_45f

    const/4 v2, 0x0

    aget-object v2, v5, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_45f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v5, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_143} :catch_201

    move-result-object v0

    move-object v3, v0

    :goto_145
    :try_start_145
    array-length v0, v5

    if-le v0, v8, :cond_45b

    const/4 v0, 0x1

    aget-object v0, v5, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45b

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_154} :catch_446

    move-result v2

    :try_start_155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_16c} :catch_44c

    move-result v1

    move v0, v1

    move v1, v2

    move-object v2, v3

    :goto_170
    :try_start_170
    array-length v3, v5

    if-le v3, v4, :cond_20e

    move v3, v4

    :goto_174
    array-length v4, v5

    if-ge v3, v4, :cond_20e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v5, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_189} :catch_454

    move-result-object v4

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v4

    goto :goto_174

    :catch_18f
    move-exception v3

    sget-object v3, Lcom/baidu/home/WalletHomeActivityVip;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse color error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_title_color:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_56

    :cond_1ac
    iget-object v3, p0, Lcom/baidu/home/WalletHomeActivityVip;->i:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_56

    :catch_1b5
    move-exception v3

    sget-object v3, Lcom/baidu/home/WalletHomeActivityVip;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse color error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_level_color:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_78

    :cond_1d2
    iget-object v3, p0, Lcom/baidu/home/WalletHomeActivityVip;->j:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_78

    :catch_1db
    move-exception v3

    sget-object v3, Lcom/baidu/home/WalletHomeActivityVip;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse color error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_name_color:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9a

    :cond_1f8
    iget-object v3, p0, Lcom/baidu/home/WalletHomeActivityVip;->k:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9a

    :catch_201
    move-exception v2

    move-object v3, v2

    move-object v2, v0

    move v0, v1

    :goto_205
    sget-object v4, Lcom/baidu/home/WalletHomeActivityVip;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20e
    :goto_20e
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-ltz v1, :cond_270

    if-ge v1, v0, :cond_270

    iget-object v4, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    invoke-static {v4}, Lcom/baidu/paysdk/storage/a;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_457

    const-string v4, "****"

    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_277

    const-string v0, ""

    :goto_235
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23d

    const-string v2, ""

    :cond_23d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int v2, v1, v0

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_25d
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v5, "bd_wallet_home_cashback_text_color"

    invoke-static {v4, v5}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v3, v0

    :cond_270
    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_277
    move-object v0, v3

    goto :goto_235

    :cond_279
    if-eqz v2, :cond_3de

    iget-object v1, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_341

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->i:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_title_color:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29d

    :try_start_292
    iget-object v1, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_title_color:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/baidu/home/WalletHomeActivityVip;->a(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/baidu/home/WalletHomeActivityVip;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_29d
    .catch Ljava/lang/Exception; {:try_start_292 .. :try_end_29d} :catch_324

    :cond_29d
    :goto_29d
    iget-object v1, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_level:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37a

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->j:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_level:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_level_color:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2bf

    :try_start_2b4
    iget-object v1, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_level_color:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/baidu/home/WalletHomeActivityVip;->a(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/baidu/home/WalletHomeActivityVip;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_2bf
    .catch Ljava/lang/Exception; {:try_start_2b4 .. :try_end_2bf} :catch_35d

    :cond_2bf
    :goto_2bf
    iget-object v1, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b3

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->k:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_name_color:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e1

    :try_start_2d6
    iget-object v1, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_name_color:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/baidu/home/WalletHomeActivityVip;->a(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/baidu/home/WalletHomeActivityVip;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_2e1
    .catch Ljava/lang/Exception; {:try_start_2d6 .. :try_end_2e1} :catch_396

    :cond_2e1
    :goto_2e1
    iget-object v1, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->safe_title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2ee

    iget-object v1, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->safe_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitleCenterSafeTipText(Ljava/lang/String;)V

    :cond_2ee
    iget-object v0, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->bkImage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3cf

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->android_prefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_318

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->l:Lcom/baidu/wallet/base/widget/NetImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->android_prefix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->bkImage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/NetImageView;->setImageUrl(Ljava/lang/String;)V

    :cond_318
    :goto_318
    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->n:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    :catch_324
    move-exception v1

    sget-object v1, Lcom/baidu/home/WalletHomeActivityVip;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse color error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_title_color:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29d

    :cond_341
    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->i:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v4, "wallet_home_user_title"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->i:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v4, "bd_wallet_home_user_title_text_yellow"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_29d

    :catch_35d
    move-exception v1

    sget-object v1, Lcom/baidu/home/WalletHomeActivityVip;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse color error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_level_color:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2bf

    :cond_37a
    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v4, "wallet_home_user_level"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v4, "bd_wallet_home_user_level_text_yellow"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2bf

    :catch_396
    move-exception v1

    sget-object v1, Lcom/baidu/home/WalletHomeActivityVip;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse color error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->user_name_color:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e1

    :cond_3b3
    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->k:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v4, "wallet_home_user_name"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->k:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v4, "bd_wallet_home_user_name_text_yellow"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2e1

    :cond_3cf
    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->l:Lcom/baidu/wallet/base/widget/NetImageView;

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v2, "wallet_home_title_bg"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/NetImageView;->setImageResource(I)V

    goto/16 :goto_318

    :cond_3de
    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v3, "wallet_home_user_title"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v3, "bd_wallet_home_user_title_text_yellow"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v3, "wallet_home_user_level"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v3, "bd_wallet_home_user_level_text_yellow"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v3, "wallet_home_user_name"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v3, "bd_wallet_home_user_name_text_yellow"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v2, "wallet_home_title_safe_tip"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitleCenterSafeTipText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->l:Lcom/baidu/wallet/base/widget/NetImageView;

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v2, "wallet_home_title_bg"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/NetImageView;->setImageResource(I)V

    goto/16 :goto_318

    :catch_446
    move-exception v0

    move-object v2, v3

    move-object v3, v0

    move v0, v1

    goto/16 :goto_205

    :catch_44c
    move-exception v0

    move-object v10, v0

    move v0, v1

    move v1, v2

    move-object v2, v3

    move-object v3, v10

    goto/16 :goto_205

    :catch_454
    move-exception v3

    goto/16 :goto_205

    :cond_457
    move v2, v0

    move-object v0, v3

    goto/16 :goto_25d

    :cond_45b
    move v0, v1

    move-object v2, v3

    goto/16 :goto_170

    :cond_45f
    move-object v3, v0

    goto/16 :goto_145

    :cond_462
    move-object v2, v0

    move v0, v1

    goto/16 :goto_20e
.end method

.method private b(Ljava/lang/String;)J
    .registers 6

    const-wide/16 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    :goto_8
    return-wide v0

    :cond_9
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_10
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_19
    .catch Ljava/text/ParseException; {:try_start_10 .. :try_end_19} :catch_1b

    move-result-wide v0

    goto :goto_8

    :catch_1b
    move-exception v2

    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_8
.end method

.method private b(Landroid/content/Context;)Lcom/baidu/home/datamodel/HomeCfgResponseVip;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "service.cfg"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_a} :catch_37
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_54
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_a} :catch_71
    .catchall {:try_start_1 .. :try_end_a} :catchall_8e

    move-result-object v2

    :try_start_b
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_10} :catch_b5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_b0
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_10} :catch_ab
    .catchall {:try_start_b .. :try_end_10} :catchall_a6

    :try_start_10
    invoke-static {v3}, Lcom/baidu/wallet/core/utils/FileCopyUtils;->copyToString(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_bd

    const-class v4, Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    invoke-static {v0, v4}, Lcom/baidu/wallet/core/utils/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip;
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_22} :catch_b8
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_22} :catch_b3
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_22} :catch_ae
    .catchall {:try_start_10 .. :try_end_22} :catchall_a9

    :goto_22
    if-eqz v3, :cond_27

    :try_start_24
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_2d

    :cond_27
    :goto_27
    if-eqz v2, :cond_2c

    :try_start_29
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_32

    :cond_2c
    :goto_2c
    return-object v0

    :catch_2d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27

    :catch_32
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    :catch_37
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_3a
    :try_start_3a
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_a9

    if-eqz v3, :cond_42

    :try_start_3f
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_49

    :cond_42
    :goto_42
    if-eqz v2, :cond_ba

    :try_start_44
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_4e

    move-object v0, v1

    goto :goto_2c

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    :catch_4e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2c

    :catch_54
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_57
    :try_start_57
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_a9

    if-eqz v3, :cond_5f

    :try_start_5c
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_66

    :cond_5f
    :goto_5f
    if-eqz v2, :cond_ba

    :try_start_61
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_6b

    move-object v0, v1

    goto :goto_2c

    :catch_66
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5f

    :catch_6b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2c

    :catch_71
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_74
    :try_start_74
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_a9

    if-eqz v3, :cond_7c

    :try_start_79
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_83

    :cond_7c
    :goto_7c
    if-eqz v2, :cond_ba

    :try_start_7e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_88

    move-object v0, v1

    goto :goto_2c

    :catch_83
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7c

    :catch_88
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2c

    :catchall_8e
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_91
    if-eqz v3, :cond_96

    :try_start_93
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_9c

    :cond_96
    :goto_96
    if-eqz v2, :cond_9b

    :try_start_98
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_a1

    :cond_9b
    :goto_9b
    throw v0

    :catch_9c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_96

    :catch_a1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9b

    :catchall_a6
    move-exception v0

    move-object v3, v1

    goto :goto_91

    :catchall_a9
    move-exception v0

    goto :goto_91

    :catch_ab
    move-exception v0

    move-object v3, v1

    goto :goto_74

    :catch_ae
    move-exception v0

    goto :goto_74

    :catch_b0
    move-exception v0

    move-object v3, v1

    goto :goto_57

    :catch_b3
    move-exception v0

    goto :goto_57

    :catch_b5
    move-exception v0

    move-object v3, v1

    goto :goto_3a

    :catch_b8
    move-exception v0

    goto :goto_3a

    :cond_ba
    move-object v0, v1

    goto/16 :goto_2c

    :cond_bd
    move-object v0, v1

    goto/16 :goto_22
.end method

.method static synthetic b(Lcom/baidu/home/WalletHomeActivityVip;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    return-object v0
.end method

.method private b()V
    .registers 4

    const-string v0, "ebpay_bd_wallet"

    invoke-virtual {p0, v0}, Lcom/baidu/home/WalletHomeActivityVip;->initHomeActionBar(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v1, "bdactionbar"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/home/WalletHomeActivityVip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/BdActionBar;

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v2, "wallet_home_safe_pay"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setRightImgZone2NotifyText(Ljava/lang/String;)V

    new-instance v1, Lcom/baidu/home/d;

    invoke-direct {v1, p0}, Lcom/baidu/home/d;-><init>(Lcom/baidu/home/WalletHomeActivityVip;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setRightImgZone2OnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/home/WalletHomeActivityVip;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    return-object v0
.end method

.method private c()V
    .registers 6

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v1, "wallet_home_paycode_layout"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/home/WalletHomeActivityVip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v2, "wallet_home_service_layout"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/home/WalletHomeActivityVip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v3, "wallet_home_asset_layout"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/baidu/home/WalletHomeActivityVip;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v3, Lcom/baidu/home/WalletHomeActivityVip$a;

    iget-object v4, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    invoke-direct {v3, p0, v4, v2}, Lcom/baidu/home/WalletHomeActivityVip$a;-><init>(Lcom/baidu/home/WalletHomeActivityVip;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v3, p0, Lcom/baidu/home/WalletHomeActivityVip;->f:Lcom/baidu/home/WalletHomeActivityVip$a;

    new-instance v2, Lcom/baidu/home/WalletHomeActivityVip$c;

    iget-object v3, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    invoke-direct {v2, p0, v3, v0}, Lcom/baidu/home/WalletHomeActivityVip$c;-><init>(Lcom/baidu/home/WalletHomeActivityVip;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/baidu/home/WalletHomeActivityVip;->e:Lcom/baidu/home/WalletHomeActivityVip$c;

    new-instance v0, Lcom/baidu/home/WalletHomeActivityVip$d;

    iget-object v2, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    invoke-direct {v0, p0, v2, v1}, Lcom/baidu/home/WalletHomeActivityVip$d;-><init>(Lcom/baidu/home/WalletHomeActivityVip;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->g:Lcom/baidu/home/WalletHomeActivityVip$d;

    invoke-direct {p0}, Lcom/baidu/home/WalletHomeActivityVip;->e()V

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v1, "wallet_home_content"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/home/WalletHomeActivityVip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->c:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v1, "wallet_home_topgap"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/home/WalletHomeActivityVip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->d:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic d(Lcom/baidu/home/WalletHomeActivityVip;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/home/WalletHomeActivityVip;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    return-object v0
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v1, "wallet_home_user_layout"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/home/WalletHomeActivityVip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->h:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v1, "wallet_home_user_title"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/home/WalletHomeActivityVip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v1, "wallet_home_user_level"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/home/WalletHomeActivityVip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v1, "wallet_home_user_name"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/home/WalletHomeActivityVip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v1, "wallet_home_user_bg"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/home/WalletHomeActivityVip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/NetImageView;

    iput-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->l:Lcom/baidu/wallet/base/widget/NetImageView;

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v1, "wallet_home_user_cashback"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/home/WalletHomeActivityVip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v1, "wallet_home_login"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/home/WalletHomeActivityVip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->n:Landroid/widget/Button;

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic f(Lcom/baidu/home/WalletHomeActivityVip;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    return-object v0
.end method

.method private f()V
    .registers 7

    const/4 v1, 0x0

    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    invoke-virtual {v2}, Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "service.cfg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    :try_start_26
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16a

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_16a

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_37} :catch_ee
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_37} :catch_108
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_37} :catch_122
    .catchall {:try_start_26 .. :try_end_37} :catchall_13c

    :try_start_37
    invoke-static {v2}, Lcom/baidu/wallet/core/utils/FileCopyUtils;->copyToString(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_50

    const-class v5, Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    invoke-static {v0, v5}, Lcom/baidu/wallet/core/utils/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iput-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->title_info3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CategoryTitle;

    :cond_50
    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    if-eqz v0, :cond_dd

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    invoke-virtual {v0}, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->doCheckValidity()Z
    :try_end_59
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_59} :catch_162
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_59} :catch_15d
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_59} :catch_158
    .catchall {:try_start_37 .. :try_end_59} :catchall_153

    move-result v0

    if-eqz v0, :cond_dd

    const/4 v0, 0x0

    move-object v3, v2

    :goto_5e
    if-eqz v0, :cond_167

    :try_start_60
    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "service.cfg"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_71
    .catch Ljava/io/FileNotFoundException; {:try_start_60 .. :try_end_71} :catch_164
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_71} :catch_15f
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_71} :catch_15a
    .catchall {:try_start_60 .. :try_end_71} :catchall_155

    :try_start_71
    invoke-static {v2}, Lcom/baidu/wallet/core/utils/FileCopyUtils;->copyToString(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8a

    const-class v3, Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    invoke-static {v0, v3}, Lcom/baidu/wallet/core/utils/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iput-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->title_info3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CategoryTitle;

    :cond_8a
    :goto_8a
    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    invoke-static {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    iget-object v3, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    invoke-static {v3}, Lcom/baidu/paysdk/storage/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/home/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c2

    const-class v3, Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    invoke-static {v0, v3}, Lcom/baidu/wallet/core/utils/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    if-eqz v0, :cond_c2

    iget-object v3, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    if-eqz v3, :cond_c2

    iget-object v3, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v4, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->title_info3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CategoryTitle;

    iput-object v4, v3, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->title_info3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CategoryTitle;

    iget-object v3, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->user:Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;

    iput-object v0, v3, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->user:Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;
    :try_end_c2
    .catch Ljava/io/FileNotFoundException; {:try_start_71 .. :try_end_c2} :catch_162
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_c2} :catch_15d
    .catch Lorg/json/JSONException; {:try_start_71 .. :try_end_c2} :catch_158
    .catchall {:try_start_71 .. :try_end_c2} :catchall_153

    :cond_c2
    if-eqz v2, :cond_c7

    :try_start_c4
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_e4

    :cond_c7
    :goto_c7
    if-eqz v1, :cond_cc

    :try_start_c9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_e9

    :cond_cc
    :goto_cc
    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    if-eqz v0, :cond_dc

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    iget-object v2, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->combineResponse(Landroid/content/Context;Lcom/baidu/home/datamodel/HomeCfgResponseVip;)V

    invoke-direct {p0}, Lcom/baidu/home/WalletHomeActivityVip;->h()V

    :cond_dc
    return-void

    :cond_dd
    :try_start_dd
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_e0
    .catch Ljava/io/FileNotFoundException; {:try_start_dd .. :try_end_e0} :catch_162
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_15d
    .catch Lorg/json/JSONException; {:try_start_dd .. :try_end_e0} :catch_158
    .catchall {:try_start_dd .. :try_end_e0} :catchall_153

    move v0, v3

    move-object v3, v2

    goto/16 :goto_5e

    :catch_e4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c7

    :catch_e9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_cc

    :catch_ee
    move-exception v0

    move-object v2, v1

    :goto_f0
    :try_start_f0
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_f3
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_153

    if-eqz v2, :cond_f8

    :try_start_f5
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_f8} :catch_103

    :cond_f8
    :goto_f8
    if-eqz v1, :cond_cc

    :try_start_fa
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_fd} :catch_fe

    goto :goto_cc

    :catch_fe
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_cc

    :catch_103
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f8

    :catch_108
    move-exception v0

    move-object v2, v1

    :goto_10a
    :try_start_10a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_153

    if-eqz v2, :cond_112

    :try_start_10f
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_112} :catch_11d

    :cond_112
    :goto_112
    if-eqz v1, :cond_cc

    :try_start_114
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_117} :catch_118

    goto :goto_cc

    :catch_118
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_cc

    :catch_11d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_112

    :catch_122
    move-exception v0

    move-object v2, v1

    :goto_124
    :try_start_124
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_127
    .catchall {:try_start_124 .. :try_end_127} :catchall_153

    if-eqz v2, :cond_12c

    :try_start_129
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_12c} :catch_137

    :cond_12c
    :goto_12c
    if-eqz v1, :cond_cc

    :try_start_12e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_131} :catch_132

    goto :goto_cc

    :catch_132
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_cc

    :catch_137
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12c

    :catchall_13c
    move-exception v0

    move-object v2, v1

    :goto_13e
    if-eqz v2, :cond_143

    :try_start_140
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_143} :catch_149

    :cond_143
    :goto_143
    if-eqz v1, :cond_148

    :try_start_145
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_148} :catch_14e

    :cond_148
    :goto_148
    throw v0

    :catch_149
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_143

    :catch_14e
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_148

    :catchall_153
    move-exception v0

    goto :goto_13e

    :catchall_155
    move-exception v0

    move-object v2, v3

    goto :goto_13e

    :catch_158
    move-exception v0

    goto :goto_124

    :catch_15a
    move-exception v0

    move-object v2, v3

    goto :goto_124

    :catch_15d
    move-exception v0

    goto :goto_10a

    :catch_15f
    move-exception v0

    move-object v2, v3

    goto :goto_10a

    :catch_162
    move-exception v0

    goto :goto_f0

    :catch_164
    move-exception v0

    move-object v2, v3

    goto :goto_f0

    :cond_167
    move-object v2, v3

    goto/16 :goto_8a

    :cond_16a
    move v0, v3

    move-object v3, v1

    goto/16 :goto_5e
.end method

.method static synthetic g(Lcom/baidu/home/WalletHomeActivityVip;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    return-object v0
.end method

.method private g()V
    .registers 6

    const/4 v4, 0x0

    invoke-static {}, Lcom/baidu/home/beans/WalletHomeBeanFactory;->getInstance()Lcom/baidu/home/beans/WalletHomeBeanFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const v2, 0xc004

    sget-object v3, Lcom/baidu/home/WalletHomeActivityVip;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/home/beans/WalletHomeBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/home/beans/b;

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    if-eqz v1, :cond_b6

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->paycode3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    if-eqz v1, :cond_bd

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->paycode3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    if-eqz v1, :cond_bd

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->paycode3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    array-length v1, v1

    if-lez v1, :cond_bd

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->paycode3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/home/beans/b;->c(Ljava/lang/String;)V

    :goto_36
    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->title_info3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CategoryTitle;

    if-eqz v1, :cond_c2

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->title_info3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CategoryTitle;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$CategoryTitle;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;

    if-eqz v1, :cond_c2

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->title_info3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CategoryTitle;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$CategoryTitle;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;

    array-length v1, v1

    if-lez v1, :cond_c2

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->title_info3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CategoryTitle;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$CategoryTitle;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/home/beans/b;->a(Ljava/lang/String;)V

    :goto_56
    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->banner3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    if-eqz v1, :cond_c6

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->banner3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    if-eqz v1, :cond_c6

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->banner3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    array-length v1, v1

    if-lez v1, :cond_c6

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->banner3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/home/beans/b;->b(Ljava/lang/String;)V

    :goto_76
    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->assets3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    if-eqz v1, :cond_ca

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->assets3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    if-eqz v1, :cond_ca

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->assets3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    array-length v1, v1

    if-lez v1, :cond_ca

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->assets3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/home/beans/b;->d(Ljava/lang/String;)V

    :goto_96
    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->sdk_life3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    if-eqz v1, :cond_ce

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->sdk_life3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    if-eqz v1, :cond_ce

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->sdk_life3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    array-length v1, v1

    if-lez v1, :cond_ce

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->sdk_life3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/home/beans/b;->e(Ljava/lang/String;)V

    :cond_b6
    :goto_b6
    invoke-virtual {v0, p0}, Lcom/baidu/home/beans/b;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    invoke-virtual {v0}, Lcom/baidu/home/beans/b;->execBean()V

    return-void

    :cond_bd
    invoke-virtual {v0, v4}, Lcom/baidu/home/beans/b;->c(Ljava/lang/String;)V

    goto/16 :goto_36

    :cond_c2
    invoke-virtual {v0, v4}, Lcom/baidu/home/beans/b;->a(Ljava/lang/String;)V

    goto :goto_56

    :cond_c6
    invoke-virtual {v0, v4}, Lcom/baidu/home/beans/b;->b(Ljava/lang/String;)V

    goto :goto_76

    :cond_ca
    invoke-virtual {v0, v4}, Lcom/baidu/home/beans/b;->d(Ljava/lang/String;)V

    goto :goto_96

    :cond_ce
    invoke-virtual {v0, v4}, Lcom/baidu/home/beans/b;->e(Ljava/lang/String;)V

    goto :goto_b6
.end method

.method static synthetic h(Lcom/baidu/home/WalletHomeActivityVip;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    return-object v0
.end method

.method private h()V
    .registers 6

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    invoke-virtual {v0}, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->doCheckValidity()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_c
    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    invoke-direct {p0, v0}, Lcom/baidu/home/WalletHomeActivityVip;->b(Landroid/content/Context;)Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    :cond_14
    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->assets3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->assets3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->assets3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    array-length v0, v0

    if-nez v0, :cond_3d

    :cond_2f
    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    invoke-direct {p0, v0}, Lcom/baidu/home/WalletHomeActivityVip;->b(Landroid/content/Context;)Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->assets3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    iput-object v0, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->assets3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    :cond_3d
    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    invoke-direct {p0, v0}, Lcom/baidu/home/WalletHomeActivityVip;->a(Lcom/baidu/home/datamodel/HomeCfgResponseVip;)V

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->f:Lcom/baidu/home/WalletHomeActivityVip$a;

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    invoke-virtual {v0, v1}, Lcom/baidu/home/WalletHomeActivityVip$a;->a(Lcom/baidu/home/datamodel/HomeCfgResponseVip;)V

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->e:Lcom/baidu/home/WalletHomeActivityVip$c;

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    invoke-virtual {v0, v1}, Lcom/baidu/home/WalletHomeActivityVip$c;->a(Lcom/baidu/home/datamodel/HomeCfgResponseVip;)V

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->g:Lcom/baidu/home/WalletHomeActivityVip$d;

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    invoke-virtual {v0, v1}, Lcom/baidu/home/WalletHomeActivityVip$d;->a(Lcom/baidu/home/datamodel/HomeCfgResponseVip;)V

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v1, "wallet_home_shading_tip_default"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->user:Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->user:Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->alive:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Alive;

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->user:Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->alive:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Alive;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Alive;->days:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_be

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->user:Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->alive:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Alive;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Alive;->unit:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_be

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v2, "wallet_home_shading_tip_days"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v4, v4, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->user:Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;

    iget-object v4, v4, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->alive:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Alive;

    iget-object v4, v4, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Alive;->days:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->user:Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->alive:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Alive;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Alive;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_be
    return-void
.end method

.method static synthetic i(Lcom/baidu/home/WalletHomeActivityVip;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/home/WalletHomeActivityVip;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    return-object v0
.end method

.method static synthetic k(Lcom/baidu/home/WalletHomeActivityVip;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/home/WalletHomeActivityVip;->g()V

    return-void
.end method


# virtual methods
.method public handleFailure(IILjava/lang/String;)V
    .registers 5

    const/16 v0, 0x138b

    if-ne p2, v0, :cond_21

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip;->getActivity()Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->logout()V

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    invoke-virtual {v0}, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->doCheckValidity()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1b
    invoke-direct {p0}, Lcom/baidu/home/WalletHomeActivityVip;->f()V

    :cond_1e
    invoke-direct {p0}, Lcom/baidu/home/WalletHomeActivityVip;->h()V

    :cond_21
    return-void
.end method

.method public handleResponse(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    check-cast p2, Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    invoke-virtual {v0, v1, p2}, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->combineResponse(Landroid/content/Context;Lcom/baidu/home/datamodel/HomeCfgResponseVip;)V

    :goto_d
    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    invoke-virtual {v0}, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->doCheckValidity()Z

    move-result v0

    if-nez v0, :cond_29

    :cond_19
    sget-object v0, Lcom/baidu/home/WalletHomeActivityVip;->a:Ljava/lang/String;

    const-string v1, "handleResponse. return."

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/baidu/home/WalletHomeActivityVip;->f()V

    :goto_23
    return-void

    :cond_24
    check-cast p2, Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iput-object p2, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    goto :goto_d

    :cond_29
    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    invoke-virtual {v0, v1}, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->doStoreResponse(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/baidu/home/WalletHomeActivityVip;->h()V

    goto :goto_23
.end method

.method public onBackPressed()Z
    .registers 3

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/storage/PayDataCache;->setmPpHome(Z)V

    invoke-super {p0}, Lcom/baidu/wallet/core/plugins/pluginfake/PluginBeanActivity;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v2, "ebpay_no_network"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->n:Landroid/widget/Button;

    if-ne p1, v0, :cond_2e

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v1, "newHome3ClickLogin"

    invoke-static {v0, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    new-instance v1, Lcom/baidu/home/e;

    invoke-direct {v1, p0}, Lcom/baidu/home/e;-><init>(Lcom/baidu/home/WalletHomeActivityVip;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/api/BaiduWallet;->login(Lcom/baidu/wallet/api/ILoginBackListener;)V

    goto :goto_15

    :cond_2e
    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->h:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_ac

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v1, "newHome3ClickTitle"

    invoke-static {v0, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->b:Lcom/baidu/home/datamodel/HomeCfgResponseVip;

    invoke-virtual {v0}, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->getTitleInfo()Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v1, "3"

    iget-object v2, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    iget-object v1, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->link_addr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->link_addr:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/baidu/wallet/api/BaiduWallet;->gotoWalletService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_65
    const-string v1, "1"

    iget-object v2, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    iget-object v1, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->link_addr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8d

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-class v3, Lcom/baidu/paysdk/ui/LightappBrowseActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "jump_url"

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->link_addr:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_15

    :cond_8d
    const-string v1, "2"

    iget-object v2, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->link_addr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$GroupTitle;->link_addr:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/wallet/api/BaiduWallet;->startPage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_ac
    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->m:Landroid/widget/TextView;

    if-ne p1, v0, :cond_15

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v1, "newHome3ClickCashBack"

    invoke-static {v0, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v2, "8192"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/wallet/api/BaiduWallet;->gotoWalletService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/baidu/wallet/core/plugins/pluginfake/PluginBeanActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/baidu/home/WalletHomeActivityVip;->a:Ljava/lang/String;

    const-string v1, "onCreate."

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const-string v1, "wallet_home_main_vip"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/home/WalletHomeActivityVip;->setContentView(I)V

    invoke-direct {p0}, Lcom/baidu/home/WalletHomeActivityVip;->b()V

    invoke-direct {p0}, Lcom/baidu/home/WalletHomeActivityVip;->c()V

    sget-boolean v0, Lcom/baidu/wallet/core/beans/BeanConstants;->IS_WALLET_PLUGIN:Z

    if-eqz v0, :cond_29

    :try_start_1f
    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getPluginConfigFromServer(Landroid/content/Context;Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_29} :catch_2d

    :cond_29
    :goto_29
    invoke-direct {p0}, Lcom/baidu/home/WalletHomeActivityVip;->f()V

    return-void

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method public onDestroy()V
    .registers 3

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanManager;->getInstance()Lcom/baidu/wallet/core/beans/BeanManager;

    move-result-object v0

    sget-object v1, Lcom/baidu/home/WalletHomeActivityVip;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanManager;->removeAllBeans(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/baidu/wallet/core/plugins/pluginfake/PluginBeanActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/wallet/core/plugins/pluginfake/PluginBeanActivity;->onPause()V

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    sget-object v1, Lcom/baidu/home/WalletHomeActivityVip;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onPageEnd(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/wallet/core/plugins/pluginfake/PluginBeanActivity;->onResume()V

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    sget-object v1, Lcom/baidu/home/WalletHomeActivityVip;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip;->mAct:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    invoke-direct {p0, v0}, Lcom/baidu/home/WalletHomeActivityVip;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/wallet/core/beans/BeanConstants;->mHasHomePage:Z

    invoke-direct {p0}, Lcom/baidu/home/WalletHomeActivityVip;->g()V

    return-void
.end method
