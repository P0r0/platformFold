.class public Lorg/cocos2dx/lua/AppActivity;
.super Lcom/u8/sdk/U8CocosActivity;
.source "AppActivity.java"


# static fields
.field static hostIPAdress:Ljava/lang/String;

.field private static mActivity:Lorg/cocos2dx/lua/AppActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2dx/lua/AppActivity;->mActivity:Lorg/cocos2dx/lua/AppActivity;

    const-string v0, "0.0.0.0"

    sput-object v0, Lorg/cocos2dx/lua/AppActivity;->hostIPAdress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/u8/sdk/U8CocosActivity;-><init>()V

    return-void
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/cocos2dx/lua/AppActivity;->hostIPAdress:Ljava/lang/String;

    return-object v0
.end method

.method private isNetworkConnected()Z
    .locals 7

    const/4 v4, 0x1

    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lorg/cocos2dx/lua/AppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    const-class v5, Landroid/net/ConnectivityManager;

    const-string v6, "TYPE_ETHERNET"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    return v4

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private static native nativeIsDebug()Z
.end method

.method private static native nativeIsLandScape()Z
.end method


# virtual methods
.method public getHostIpAddress()Ljava/lang/String;
    .locals 5

    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lorg/cocos2dx/lua/AppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v4, v0, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v4, v0, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v4, v0, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v4, v0, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/16 v2, 0x80

    invoke-super {p0, p1}, Lcom/u8/sdk/U8CocosActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lorg/cocos2dx/lua/AppActivity;->nativeIsLandScape()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lua/AppActivity;->setRequestedOrientation(I)V

    :goto_0
    sput-object p0, Lorg/cocos2dx/lua/AppActivity;->mActivity:Lorg/cocos2dx/lua/AppActivity;

    invoke-static {}, Lorg/cocos2dx/lua/AppActivity;->nativeIsDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/cocos2dx/lua/AppActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-direct {p0}, Lorg/cocos2dx/lua/AppActivity;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Warning"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Please open WIFI for debuging..."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "OK"

    new-instance v2, Lorg/cocos2dx/lua/AppActivity$1;

    invoke-direct {v2, p0}, Lorg/cocos2dx/lua/AppActivity$1;-><init>(Lorg/cocos2dx/lua/AppActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Lorg/cocos2dx/lua/AppActivity;->getHostIpAddress()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/cocos2dx/lua/AppActivity;->hostIPAdress:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lua/AppActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
