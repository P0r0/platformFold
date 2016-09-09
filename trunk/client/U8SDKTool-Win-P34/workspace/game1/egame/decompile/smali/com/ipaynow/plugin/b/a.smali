.class public final Lcom/ipaynow/plugin/b/a;
.super Ljava/lang/Object;


# static fields
.field private static o:Ljava/util/ArrayList;

.field private static p:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ipaynow/plugin/b/a;->o:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ipaynow/plugin/b/a;->p:Ljava/util/ArrayList;

    sget-object v0, Lcom/ipaynow/plugin/b/a;->o:Ljava/util/ArrayList;

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/plugin/b/a;->o:Ljava/util/ArrayList;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/plugin/b/a;->o:Ljava/util/ArrayList;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/plugin/b/a;->o:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/plugin/b/a;->o:Ljava/util/ArrayList;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/plugin/b/a;->p:Ljava/util/ArrayList;

    const-string v1, "13"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Landroid/app/Activity;)Z
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    sget-object v0, Lcom/ipaynow/plugin/b/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v1

    :cond_18
    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/ipaynow/plugin/b/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v3, v0, :cond_41

    move v0, v1

    :goto_27
    return v0

    :cond_28
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    array-length v6, v4

    move v2, v1

    :goto_30
    if-ge v2, v6, :cond_18

    aget-object v7, v4, v2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_43

    move-result v7

    if-eqz v7, :cond_3e

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_18

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_41
    const/4 v0, 0x1

    goto :goto_27

    :catch_43
    move-exception v0

    move v0, v1

    goto :goto_27
.end method

.method public static a(Ljava/util/HashMap;)Z
    .registers 4

    const/4 v1, 0x1

    const-string v0, "payChannelType"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "payChannelType"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/ipaynow/plugin/b/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a

    :cond_1d
    move v0, v1

    goto :goto_1a
.end method

.method public static b()Z
    .registers 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
