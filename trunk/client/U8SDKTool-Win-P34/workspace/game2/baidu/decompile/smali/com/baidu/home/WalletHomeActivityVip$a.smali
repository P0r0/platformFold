.class Lcom/baidu/home/WalletHomeActivityVip$a;
.super Lcom/baidu/home/WalletHomeActivityVip$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/home/WalletHomeActivityVip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/home/WalletHomeActivityVip;

.field private final c:[Ljava/lang/String;

.field private d:[Landroid/view/ViewGroup;

.field private e:Z

.field private f:Ljava/lang/String;

.field private final g:Ljava/util/Map;

.field private final h:Ljava/util/Set;

.field private final i:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/baidu/home/WalletHomeActivityVip;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 9

    const/4 v4, 0x1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->a:Lcom/baidu/home/WalletHomeActivityVip;

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/home/WalletHomeActivityVip$b;-><init>(Lcom/baidu/home/WalletHomeActivityVip;Landroid/content/Context;Landroid/view/ViewGroup;)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "wallet_home_asset_balance"

    aput-object v2, v1, v0

    const-string v2, "wallet_home_asset_bankcard"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "wallet_home_asset_discount"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "wallet_home_asset_history"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->c:[Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->c:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->d:[Landroid/view/ViewGroup;

    iput-boolean v4, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->e:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->f:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->g:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->h:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->i:Ljava/util/Set;

    move v1, v0

    :goto_41
    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->c:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_60

    iget-object v2, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->d:[Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->c:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v0, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_41

    :cond_60
    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wallet_home_none"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;J)J
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    :try_start_6
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_d} :catch_f

    move-result-wide p2

    :cond_e
    :goto_e
    return-wide p2

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_e
.end method

.method private a(Landroid/view/ViewGroup;)V
    .registers 7

    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wallet_home_asset_title"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$a;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wallet_home_asset_value_bg"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$a;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wallet_asset_new"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/wallet/base/widget/NetImageView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v4}, Lcom/baidu/wallet/base/widget/NetImageView;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .registers 12

    const/4 v4, 0x0

    invoke-static {}, Lcom/baidu/home/WalletHomeActivityVip;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update Asset Config View: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " valueStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " showBalanceNew :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " showNewCashBack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wallet_home_asset_title"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$a;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wallet_home_asset_value_bg"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$a;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wallet_asset_new"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/wallet/base/widget/NetImageView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v4}, Lcom/baidu/wallet/base/widget/NetImageView;->setVisibility(I)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_d1

    invoke-virtual {v2, v4}, Lcom/baidu/wallet/base/widget/NetImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->a:Lcom/baidu/home/WalletHomeActivityVip;

    invoke-static {v0}, Lcom/baidu/home/WalletHomeActivityVip;->h(Lcom/baidu/home/WalletHomeActivityVip;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v0

    const-string v3, "wallet_home_cashbacknew"

    invoke-static {v0, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/baidu/wallet/base/widget/NetImageView;->setImageResource(I)V

    :goto_97
    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wallet_home_bindcard"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wallet_home_receiveble"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    :cond_b7
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v0, "#e71f19"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_c5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10f

    const-string v0, ""

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_d0
    return-void

    :cond_d1
    if-eqz p4, :cond_e6

    invoke-virtual {v2, v4}, Lcom/baidu/wallet/base/widget/NetImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->a:Lcom/baidu/home/WalletHomeActivityVip;

    invoke-static {v0}, Lcom/baidu/home/WalletHomeActivityVip;->i(Lcom/baidu/home/WalletHomeActivityVip;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v0

    const-string v3, "wallet_home_balancenew"

    invoke-static {v0, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/baidu/wallet/base/widget/NetImageView;->setImageResource(I)V

    goto :goto_97

    :cond_e6
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lcom/baidu/wallet/base/widget/NetImageView;->setVisibility(I)V

    goto :goto_97

    :cond_ec
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/paysdk/storage/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_105

    const-string v0, "#999999"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_c5

    :cond_105
    const-string v0, "#222222"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_c5

    :cond_10f
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d0
.end method

.method private a(Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;)V
    .registers 16

    const-wide/16 v12, 0x4

    const-wide/16 v10, 0x10

    const-wide/16 v8, 0x40

    const-wide/16 v6, 0x20

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_17
    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->h:Ljava/util/Set;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_20
    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->i:Ljava/util/Set;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_29
    if-eqz p1, :cond_28b

    const-string v0, "1"

    iget-object v1, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->is_login:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28b

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/paysdk/storage/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c4

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->g:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->g:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$a;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wallet_home_bindcard"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->g:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->g:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->cashback:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CashBack;

    if-eqz v0, :cond_a4

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->cashback:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CashBack;

    invoke-virtual {v0}, Lcom/baidu/home/datamodel/HomeCfgResponseVip$CashBack;->hasCashBack()Z

    move-result v0

    if-eqz v0, :cond_a4

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->a:Lcom/baidu/home/WalletHomeActivityVip;

    iget-object v1, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->cashback:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CashBack;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$CashBack;->cashback_time:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/home/WalletHomeActivityVip;->a(Lcom/baidu/home/WalletHomeActivityVip;Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->a:Lcom/baidu/home/WalletHomeActivityVip;

    invoke-static {v2}, Lcom/baidu/home/WalletHomeActivityVip;->d(Lcom/baidu/home/WalletHomeActivityVip;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/home/a/a;->a(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_a4

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->i:Ljava/util/Set;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a4
    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->balance:Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Account;

    if-eqz v0, :cond_e8

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->balance:Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Account;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Account;->hasCanAmount()Z

    move-result v0

    if-eqz v0, :cond_e8

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->balance:Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Account;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Account;->can_amount3:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c7

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->g:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->balance:Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Account;

    iget-object v2, v2, Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Account;->can_amount3:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c7
    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->a:Lcom/baidu/home/WalletHomeActivityVip;

    iget-object v1, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->balance:Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Account;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Account;->recv_create_time:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/home/WalletHomeActivityVip;->a(Lcom/baidu/home/WalletHomeActivityVip;Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->a:Lcom/baidu/home/WalletHomeActivityVip;

    invoke-static {v2}, Lcom/baidu/home/WalletHomeActivityVip;->e(Lcom/baidu/home/WalletHomeActivityVip;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/home/a/a;->d(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_e8

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->h:Ljava/util/Set;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_e8
    iget v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->bind_card_num:I

    if-lez v0, :cond_10a

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->g:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->bind_card_num:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10a
    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->coupon:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CouponInfo;

    if-eqz v0, :cond_15c

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->coupon:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CouponInfo;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$CouponInfo;->coupon_count:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v5}, Lcom/baidu/home/WalletHomeActivityVip$a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_15c

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->coupon:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CouponInfo;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$CouponInfo;->coupon_count3:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_131

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->g:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->coupon:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CouponInfo;

    iget-object v2, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$CouponInfo;->coupon_count3:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_131
    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->coupon:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CouponInfo;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$CouponInfo;->coupon_time:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15c

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/home/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4, v5}, Lcom/baidu/home/WalletHomeActivityVip$a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->coupon:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CouponInfo;

    iget-object v2, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$CouponInfo;->coupon_time:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/baidu/home/WalletHomeActivityVip$a;->a(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_15c

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->h:Ljava/util/Set;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_15c
    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->transation:Lcom/baidu/home/datamodel/HomeCfgResponseVip$TransationInfo;

    if-eqz v0, :cond_187

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->transation:Lcom/baidu/home/datamodel/HomeCfgResponseVip$TransationInfo;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$TransationInfo;->receivebale_count:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v5}, Lcom/baidu/home/WalletHomeActivityVip$a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->transation:Lcom/baidu/home/datamodel/HomeCfgResponseVip$TransationInfo;

    iget-object v2, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$TransationInfo;->transation_count:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/baidu/home/WalletHomeActivityVip$a;->a(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_1a8

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->g:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$a;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wallet_home_receiveble"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_187
    :goto_187
    invoke-static {}, Lcom/baidu/home/WalletHomeActivityVip;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAssetPoints :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->h:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a8
    cmp-long v0, v2, v4

    if-lez v0, :cond_187

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->transation:Lcom/baidu/home/datamodel/HomeCfgResponseVip$TransationInfo;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$TransationInfo;->transation_count3:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_187

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->g:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->transation:Lcom/baidu/home/datamodel/HomeCfgResponseVip$TransationInfo;

    iget-object v2, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$TransationInfo;->transation_count3:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_187

    :cond_1c4
    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->g:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "****"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->g:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "****"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->g:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "****"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->g:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "****"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->cashback:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CashBack;

    if-eqz v0, :cond_221

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->cashback:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CashBack;

    invoke-virtual {v0}, Lcom/baidu/home/datamodel/HomeCfgResponseVip$CashBack;->hasCashBack()Z

    move-result v0

    if-eqz v0, :cond_221

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->a:Lcom/baidu/home/WalletHomeActivityVip;

    iget-object v1, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->cashback:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CashBack;

    iget-object v1, v1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$CashBack;->cashback_time:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/home/WalletHomeActivityVip;->a(Lcom/baidu/home/WalletHomeActivityVip;Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->a:Lcom/baidu/home/WalletHomeActivityVip;

    invoke-static {v2}, Lcom/baidu/home/WalletHomeActivityVip;->f(Lcom/baidu/home/WalletHomeActivityVip;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/home/a/a;->a(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_221

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->i:Ljava/util/Set;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_221
    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->balance:Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Account;

    if-eqz v0, :cond_24e

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->balance:Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Account;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Account;->hasCanAmount()Z

    move-result v0

    if-eqz v0, :cond_24e

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->a:Lcom/baidu/home/WalletHomeActivityVip;

    iget-object v1, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->balance:Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Account;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Account;->recv_create_time:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/home/WalletHomeActivityVip;->a(Lcom/baidu/home/WalletHomeActivityVip;Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->a:Lcom/baidu/home/WalletHomeActivityVip;

    invoke-static {v2}, Lcom/baidu/home/WalletHomeActivityVip;->g(Lcom/baidu/home/WalletHomeActivityVip;)Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/home/a/a;->d(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_24e

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->h:Ljava/util/Set;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_24e
    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->coupon:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CouponInfo;

    if-eqz v0, :cond_187

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->coupon:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CouponInfo;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$CouponInfo;->coupon_count:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v5}, Lcom/baidu/home/WalletHomeActivityVip$a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_187

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->coupon:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CouponInfo;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$CouponInfo;->coupon_time:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_187

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/home/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4, v5}, Lcom/baidu/home/WalletHomeActivityVip$a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;->coupon:Lcom/baidu/home/datamodel/HomeCfgResponseVip$CouponInfo;

    iget-object v2, v2, Lcom/baidu/home/datamodel/HomeCfgResponseVip$CouponInfo;->coupon_time:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/baidu/home/WalletHomeActivityVip$a;->a(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_187

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->h:Ljava/util/Set;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_187

    :cond_28b
    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->g:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->g:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->g:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->g:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_187
.end method


# virtual methods
.method protected a(Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;)V
    .registers 8

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$a;->a()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_6b

    if-eqz v1, :cond_6b

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;->link_addr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6b

    const-string v0, ""

    iget-object v2, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;->link_addr:Ljava/lang/String;

    const-wide/16 v4, 0x20

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v0, "newHomeClickBalance"

    :cond_22
    iget-object v2, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;->link_addr:Ljava/lang/String;

    const-wide/16 v4, 0x4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v0, "newHomeClickCards"

    :cond_32
    iget-object v2, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;->link_addr:Ljava/lang/String;

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string v0, "newHomeClickCashBack"

    :cond_42
    iget-object v2, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;->link_addr:Ljava/lang/String;

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    const-string v0, "newHomeClickCoupon"

    :cond_52
    iget-object v2, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;->link_addr:Ljava/lang/String;

    const-wide/16 v4, 0x10

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    const-string v0, "newHomeClickTradeList"

    :cond_62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6b

    invoke-static {v1, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6b
    return-void
.end method

.method public a(Lcom/baidu/home/datamodel/HomeCfgResponseVip;)V
    .registers 12

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$a;->b()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/baidu/home/WalletHomeActivityVip$a;->b(Lcom/baidu/home/datamodel/HomeCfgResponseVip;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->user:Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;

    invoke-direct {p0, v0}, Lcom/baidu/home/WalletHomeActivityVip$a;->a(Lcom/baidu/home/datamodel/HomeCfgResponseVip$User;)V

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->assets3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    invoke-virtual {p0, v0}, Lcom/baidu/home/WalletHomeActivityVip$a;->a(Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/baidu/home/WalletHomeActivityVip$a;->b()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip;->assets3:Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;

    iget-object v0, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    aget-object v0, v0, v7

    iget-object v9, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;->list:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;

    move v0, v7

    :goto_2e
    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->d:[Landroid/view/ViewGroup;

    array-length v1, v1

    if-ge v0, v1, :cond_3d

    iget-object v1, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->d:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/baidu/home/WalletHomeActivityVip$a;->a(Landroid/view/ViewGroup;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_3d
    move v8, v7

    :goto_3e
    array-length v0, v9

    if-ge v8, v0, :cond_8a

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->d:[Landroid/view/ViewGroup;

    array-length v0, v0

    if-ge v8, v0, :cond_8a

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->d:[Landroid/view/ViewGroup;

    aget-object v1, v0, v8

    aget-object v0, v9, v8

    iget-object v2, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->g:Ljava/util/Map;

    aget-object v3, v9, v8

    iget-object v3, v3, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;->link_addr:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->h:Ljava/util/Set;

    aget-object v4, v9, v8

    iget-object v4, v4, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;->link_addr:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->i:Ljava/util/Set;

    aget-object v5, v9, v8

    iget-object v5, v5, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;->link_addr:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    aget-object v0, v9, v8

    iget-object v6, v0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;->corner_addr:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/home/WalletHomeActivityVip$a;->a(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->d:[Landroid/view/ViewGroup;

    aget-object v0, v0, v8

    aget-object v1, v9, v8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->d:[Landroid/view/ViewGroup;

    aget-object v0, v0, v8

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_3e

    :cond_8a
    iput-boolean v7, p0, Lcom/baidu/home/WalletHomeActivityVip$a;->e:Z

    goto :goto_10
.end method
