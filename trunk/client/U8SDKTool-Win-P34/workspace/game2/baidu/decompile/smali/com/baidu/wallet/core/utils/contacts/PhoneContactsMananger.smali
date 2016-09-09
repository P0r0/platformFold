.class public Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$1;,
        Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$LoadAddressInfoListener;,
        Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$a;,
        Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$ContactStatus;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$LoadAddressInfoListener;

.field private e:Ljava/util/HashMap;

.field private f:Ljava/util/HashMap;

.field private g:Ljava/util/ArrayList;

.field private h:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->b:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->g:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->h:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$a;

    iput-object p1, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->e:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->f:Ljava/util/HashMap;

    return-object p1
.end method

.method private b()V
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->g:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->g:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_30
    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3a
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->g:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    iget-object v2, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->g:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_60
    return-void
.end method

.method static synthetic c(Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->b()V

    return-void
.end method

.method static synthetic f(Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;)Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$LoadAddressInfoListener;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->d:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$LoadAddressInfoListener;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;
    .registers 3

    const-class v1, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->b:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->b:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;

    :cond_e
    sget-object v0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->b:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getPayphoneInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;

    :cond_12
    sget-object v2, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u624b\u673a\u53f7\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_54

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5173\u8054\u5230\u7684\u4fe1\u606f\u662f"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_42
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_53
    return-object v0

    :cond_54
    const-string v1, "\u8be5\u624b\u673a\u53f7\u6ca1\u6709\u5173\u8054\u901a\u8baf\u5f55"

    goto :goto_42

    :cond_57
    const-string v0, ""

    goto :goto_53
.end method

.method public loadFixPhoneList(Ljava/lang/String;I)V
    .registers 13

    const/4 v9, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;

    :cond_14
    if-eqz v0, :cond_43

    sget-object v0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8be5\u624b\u673a\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u662f\u901a\u8baf\u5f55\u91cc\u9762\u7684\u53f7\u7801"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->d:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$LoadAddressInfoListener;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->d:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$LoadAddressInfoListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$LoadAddressInfoListener;->onFixPhoneList(Ljava/lang/String;Ljava/util/List;)V

    :cond_42
    :goto_42
    return-void

    :cond_43
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    move v1, v2

    :goto_4d
    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_b5

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->getMobile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;

    invoke-virtual {v0, v9}, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->setErrordigit(I)V

    move v3, v2

    move v0, v2

    :goto_78
    array-length v4, v7

    if-ge v3, v4, :cond_f2

    aget-char v4, v6, v3

    aget-char v8, v7, v3

    if-eq v4, v8, :cond_f0

    add-int/lit8 v4, v0, 0x1

    const/4 v0, 0x1

    if-ne v4, v0, :cond_91

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;

    invoke-virtual {v0, v3}, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->setErrordigit(I)V

    :cond_91
    :goto_91
    if-le v4, p2, :cond_a4

    :goto_93
    if-lez v4, :cond_a9

    if-gt v4, p2, :cond_a9

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a0
    :goto_a0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4d

    :cond_a4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_78

    :cond_a9
    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;

    invoke-virtual {v0, v9}, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->setErrordigit(I)V

    goto :goto_a0

    :cond_b5
    sget-object v0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0e\u624b\u673a\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u662f\u901a\u8baf\u5f55\u91cc\u9762\u6700\u591a\u6709"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4f4d\u4e0d\u4e00\u6837\u7684\u53f7\u7801\u662f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->d:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$LoadAddressInfoListener;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->d:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$LoadAddressInfoListener;

    invoke-interface {v0, p1, v5}, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$LoadAddressInfoListener;->onFixPhoneList(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_42

    :cond_f0
    move v4, v0

    goto :goto_91

    :cond_f2
    move v4, v0

    goto :goto_93
.end method

.method public loadPayphoneInfo(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;

    if-nez v0, :cond_7b

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;

    move-object v1, v0

    :goto_13
    if-nez v1, :cond_33

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_33

    sget-object v0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->a:Ljava/lang/String;

    const-string v1, "\u901a\u8baf\u5f55\u4e3a\u7a7a\uff0c\u89c6\u4e3a\u6ca1\u6709\u6743\u9650\u4e3a\u5173\u95ed"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->d:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$LoadAddressInfoListener;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->d:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$LoadAddressInfoListener;

    new-instance v1, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;

    invoke-direct {v1}, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;-><init>()V

    invoke-interface {v0, p1, v1}, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$LoadAddressInfoListener;->onLoadFastPayPhoneInfo(Ljava/lang/String;Lcom/baidu/wallet/core/utils/contacts/ContractInfo;)V

    :cond_32
    :goto_32
    return-void

    :cond_33
    sget-object v2, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u624b\u673a\u53f7\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_78

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5173\u8054\u5230\u7684\u4fe1\u606f\u662f"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->d:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$LoadAddressInfoListener;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->d:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$LoadAddressInfoListener;

    invoke-interface {v0, p1, v1}, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$LoadAddressInfoListener;->onLoadFastPayPhoneInfo(Ljava/lang/String;Lcom/baidu/wallet/core/utils/contacts/ContractInfo;)V

    goto :goto_32

    :cond_78
    const-string v0, "\u8be5\u624b\u673a\u53f7\u6ca1\u6709\u5173\u8054\u901a\u8baf\u5f55"

    goto :goto_63

    :cond_7b
    move-object v1, v0

    goto :goto_13
.end method

.method public loadPhoneContacts()V
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->h:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$a;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$a;-><init>(Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->h:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$a;

    :cond_b
    sget-object v0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$1;->a:[I

    iget-object v1, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->h:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$a;

    invoke-virtual {v1}, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$a;->a()Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$ContactStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$ContactStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    :cond_1c
    :goto_1c
    :pswitch_1c
    return-void

    :pswitch_1d
    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->h:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1c

    :pswitch_2b
    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->d:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$LoadAddressInfoListener;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->d:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$LoadAddressInfoListener;

    iget-object v1, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->g:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$LoadAddressInfoListener;->onLoadContractsComplited(Ljava/util/ArrayList;)V

    goto :goto_1c

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_2b
    .end packed-switch
.end method

.method public removeListener()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->d:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$LoadAddressInfoListener;

    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->d:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$LoadAddressInfoListener;

    iput-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->h:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$a;

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_e
    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_17
    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setLoadAddressInfoListener(Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$LoadAddressInfoListener;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger;->d:Lcom/baidu/wallet/core/utils/contacts/PhoneContactsMananger$LoadAddressInfoListener;

    return-void
.end method
