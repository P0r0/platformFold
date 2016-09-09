.class public Lcom/ltayx/pay/SdkPayServer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MSG_WHAT_TO_APP:I = 0x3e8

.field public static final ORDER_INFO_APP_ID:Ljava/lang/String; = "appId"

.field public static final ORDER_INFO_APP_NAME:Ljava/lang/String; = "appName"

.field public static final ORDER_INFO_APP_VER:Ljava/lang/String; = "appVersion"

.field public static final ORDER_INFO_CP_CHANNELID:Ljava/lang/String; = "cpChannelId"

.field public static final ORDER_INFO_CP_EXINFO:Ljava/lang/String; = "ex"

.field public static final ORDER_INFO_GAME_TYPE:Ljava/lang/String; = "gameType"

.field public static final ORDER_INFO_MERCHANT_ID:Ljava/lang/String; = "merchantId"

.field public static final ORDER_INFO_MERCHANT_SIGN:Ljava/lang/String; = "merchantSign"

.field public static final ORDER_INFO_ORDER_DESC:Ljava/lang/String; = "orderDesc"

.field public static final ORDER_INFO_ORDER_ID:Ljava/lang/String; = "orderId"

.field public static final ORDER_INFO_PAYPOINT:Ljava/lang/String; = "payPointNum"

.field public static final ORDER_INFO_PAY_PRICE:Ljava/lang/String; = "price"

.field public static final ORDER_INFO_PAY_TYPE:Ljava/lang/String; = "payType"

.field public static final ORDER_INFO_PRODUCT_NAME:Ljava/lang/String; = "productName"

.field public static final ORDER_INFO_SDK_CHANNELID:Ljava/lang/String; = "sdkChannelId"

.field public static final ORDER_INFO_SHOW_PAYUIKEY:Ljava/lang/String; = "showUIKey"

.field public static final PAYRET_KEY_FAILED_CODE:Ljava/lang/String; = "failed_code"

.field public static final PAYRET_KEY_PAIED_PRICE:Ljava/lang/String; = "pay_price"

.field public static final PAYRET_KEY_RESULT_STATUS:Ljava/lang/String; = "result_status"

.field public static final PAY_ORDER_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final PAY_RESULT_FAILED:I = 0x1

.field public static final PAY_RESULT_FAILED_HANDLER:I = 0x67

.field public static final PAY_RESULT_FAILED_LAODER:I = 0x65

.field public static final PAY_RESULT_FAILED_NOINIT:I = 0x66

.field public static final PAY_RESULT_FAILED_ORDER:I = 0x68

.field public static final PAY_RESULT_FAILED_PARAM:I = 0x69

.field public static final PAY_RESULT_FAILED_WORKING:I = 0x6a

.field public static final PAY_RESULT_FORMAT:Ljava/lang/String; = "result_status=%s&failed_code=%s&pay_price=%s"

.field public static final PAY_RESULT_SUCCESS:I = 0x0

.field public static final PAY_RETURN_FAILED:I = 0x1

.field public static final PAY_RETURN_NOAPPC:I = 0x4

.field public static final PAY_RETURN_NOMETA:I = 0x5

.field public static final PAY_RETURN_PAYING:I = 0x2

.field public static final PAY_RETURN_SUCCESS:I = 0x0

.field public static final PAY_RETURN_UNINIT:I = 0x3

.field private static a:Lcom/ltayx/pay/SdkPayServer;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field public static isHadLoadSmsSo:Z


# instance fields
.field private e:Landroid/graphics/Bitmap;

.field private f:Ljava/lang/String;

.field private g:Landroid/os/Handler;

.field private h:I

.field private i:I

.field private final j:Lcom/ltayx/pay/receiver/InSmsReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 96
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ltayx/pay/SdkPayServer;->isHadLoadSmsSo:Z

    .line 98
    sput-object v1, Lcom/ltayx/pay/SdkPayServer;->b:Ljava/lang/String;

    .line 99
    sput-object v1, Lcom/ltayx/pay/SdkPayServer;->c:Ljava/lang/String;

    .line 100
    sput-object v1, Lcom/ltayx/pay/SdkPayServer;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ltayx/pay/SdkPayServer;->e:Landroid/graphics/Bitmap;

    .line 120
    iput v1, p0, Lcom/ltayx/pay/SdkPayServer;->h:I

    .line 121
    iput v1, p0, Lcom/ltayx/pay/SdkPayServer;->i:I

    .line 123
    new-instance v0, Lcom/ltayx/pay/receiver/InSmsReceiver;

    invoke-direct {v0}, Lcom/ltayx/pay/receiver/InSmsReceiver;-><init>()V

    iput-object v0, p0, Lcom/ltayx/pay/SdkPayServer;->j:Lcom/ltayx/pay/receiver/InSmsReceiver;

    .line 138
    return-void
.end method

.method private static a(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 243
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 244
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 245
    invoke-virtual {v1}, Landroid/view/View;->buildDrawingCache()V

    .line 246
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 247
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 248
    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_26

    .line 254
    :goto_25
    return-object v0

    .line 250
    :catch_26
    move-exception v1

    goto :goto_25
.end method

.method public static declared-synchronized getInstance()Lcom/ltayx/pay/SdkPayServer;
    .registers 2

    .prologue
    .line 128
    const-class v1, Lcom/ltayx/pay/SdkPayServer;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/ltayx/pay/SdkPayServer;->a:Lcom/ltayx/pay/SdkPayServer;

    if-nez v0, :cond_e

    .line 129
    new-instance v0, Lcom/ltayx/pay/SdkPayServer;

    invoke-direct {v0}, Lcom/ltayx/pay/SdkPayServer;-><init>()V

    sput-object v0, Lcom/ltayx/pay/SdkPayServer;->a:Lcom/ltayx/pay/SdkPayServer;

    .line 133
    :cond_e
    sget-object v0, Lcom/ltayx/pay/SdkPayServer;->a:Lcom/ltayx/pay/SdkPayServer;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 128
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPayAppId()Ljava/lang/String;
    .registers 1

    .prologue
    .line 303
    sget-object v0, Lcom/ltayx/pay/SdkPayServer;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getPayCpChannelId()Ljava/lang/String;
    .registers 1

    .prologue
    .line 307
    sget-object v0, Lcom/ltayx/pay/SdkPayServer;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static getPayMerChannetId()Ljava/lang/String;
    .registers 1

    .prologue
    .line 299
    sget-object v0, Lcom/ltayx/pay/SdkPayServer;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static setPayStartDataInfo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 290
    sput-object p1, Lcom/ltayx/pay/SdkPayServer;->b:Ljava/lang/String;

    .line 291
    sput-object p2, Lcom/ltayx/pay/SdkPayServer;->c:Ljava/lang/String;

    .line 292
    sput-object p3, Lcom/ltayx/pay/SdkPayServer;->d:Ljava/lang/String;

    .line 294
    new-instance v0, Lcom/ltayx/pay/application/PayApplication;

    invoke-direct {v0}, Lcom/ltayx/pay/application/PayApplication;-><init>()V

    .line 295
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/ltayx/pay/application/PayApplication;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method


# virtual methods
.method public declared-synchronized cancelSdkServerPay(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 228
    monitor-enter p0

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 229
    :try_start_5
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "game-cancel-pay"

    invoke-static {p1, p2, v0, v1}, Lcom/ltayx/pay/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_10

    .line 231
    :cond_e
    monitor-exit p0

    return-void

    .line 228
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getScreenShot()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/ltayx/pay/SdkPayServer;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public varargs getSignature(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 165
    invoke-static {p1, p2}, Lcom/ltayx/pay/l;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmOrderInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/ltayx/pay/SdkPayServer;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getmResultCBHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/ltayx/pay/SdkPayServer;->g:Landroid/os/Handler;

    return-object v0
.end method

.method public getmSdkPayStatus()I
    .registers 2

    .prologue
    .line 274
    iget v0, p0, Lcom/ltayx/pay/SdkPayServer;->h:I

    return v0
.end method

.method public initSdkPayServer()I
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 144
    iget v1, p0, Lcom/ltayx/pay/SdkPayServer;->i:I

    if-ne v0, v1, :cond_6

    .line 149
    :goto_5
    return v0

    .line 147
    :cond_6
    iput v0, p0, Lcom/ltayx/pay/SdkPayServer;->i:I

    .line 149
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setScreenShot(Landroid/graphics/Bitmap;)V
    .registers 2

    .prologue
    .line 262
    iput-object p1, p0, Lcom/ltayx/pay/SdkPayServer;->e:Landroid/graphics/Bitmap;

    .line 263
    return-void
.end method

.method public setmOrderInfo(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 270
    iput-object p1, p0, Lcom/ltayx/pay/SdkPayServer;->f:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setmResultCBHandler(Landroid/os/Handler;)V
    .registers 2

    .prologue
    .line 286
    iput-object p1, p0, Lcom/ltayx/pay/SdkPayServer;->g:Landroid/os/Handler;

    .line 287
    return-void
.end method

.method public setmSdkPayStatus(I)V
    .registers 2

    .prologue
    .line 278
    iput p1, p0, Lcom/ltayx/pay/SdkPayServer;->h:I

    .line 279
    return-void
.end method

.method public declared-synchronized startSdkServerPay(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;)I
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 177
    monitor-enter p0

    :try_start_2
    iget v1, p0, Lcom/ltayx/pay/SdkPayServer;->i:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_3e

    if-eq v0, v1, :cond_9

    .line 178
    const/4 v0, 0x3

    .line 221
    :cond_7
    :goto_7
    monitor-exit p0

    return v0

    .line 184
    :cond_9
    :try_start_9
    iget v1, p0, Lcom/ltayx/pay/SdkPayServer;->h:I

    if-eqz v1, :cond_f

    .line 185
    const/4 v0, 0x2

    goto :goto_7

    .line 191
    :cond_f
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    .line 198
    sget-boolean v0, Lcom/ltayx/pay/application/PayApplication;->b:Z

    if-nez v0, :cond_1b

    .line 199
    const/4 v0, 0x4

    goto :goto_7

    .line 201
    :cond_1b
    invoke-static {p1, p3}, Lcom/ltayx/pay/j;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 202
    const/4 v0, 0x5

    goto :goto_7

    .line 205
    :cond_23
    sget-boolean v0, Lcom/ltayx/pay/application/PayApplication;->a:Z

    if-nez v0, :cond_2a

    .line 211
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ltayx/pay/application/PayApplication;->a:Z

    .line 214
    :cond_2a
    iput-object p3, p0, Lcom/ltayx/pay/SdkPayServer;->f:Ljava/lang/String;

    .line 215
    iput-object p2, p0, Lcom/ltayx/pay/SdkPayServer;->g:Landroid/os/Handler;

    .line 217
    invoke-static {p1}, Lcom/ltayx/pay/SdkPayServer;->a(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ltayx/pay/SdkPayServer;->e:Landroid/graphics/Bitmap;

    .line 219
    invoke-static {}, Lcom/ltayx/pay/a;->a()Lcom/ltayx/pay/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/ltayx/pay/a;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_9 .. :try_end_3c} :catchall_3e

    .line 221
    const/4 v0, 0x0

    goto :goto_7

    .line 177
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unInitSdkPayServer()V
    .registers 2

    .prologue
    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/ltayx/pay/SdkPayServer;->i:I

    .line 157
    return-void
.end method
