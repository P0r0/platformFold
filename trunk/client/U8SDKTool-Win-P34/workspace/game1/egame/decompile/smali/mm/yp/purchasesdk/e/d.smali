.class public Lmm/yp/purchasesdk/e/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static k:I


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lmm/yp/purchasesdk/e/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/yp/purchasesdk/e/d;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lmm/yp/purchasesdk/e/d;->k:I

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget v0, Lmm/yp/purchasesdk/e/d;->k:I

    if-ge p0, v0, :cond_5

    :goto_4
    return-void

    :cond_5
    packed-switch p0, :pswitch_data_24

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lmm/yp/purchasesdk/e/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_f
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lmm/yp/purchasesdk/e/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_16
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lmm/yp/purchasesdk/e/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_1d
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lmm/yp/purchasesdk/e/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_f
        :pswitch_16
        :pswitch_1d
    .end packed-switch
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    sget v0, Lmm/yp/purchasesdk/e/d;->k:I

    if-ge p0, v0, :cond_5

    :goto_4
    return-void

    :cond_5
    packed-switch p0, :pswitch_data_24

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lmm/yp/purchasesdk/e/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_f
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lmm/yp/purchasesdk/e/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_16
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lmm/yp/purchasesdk/e/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_1d
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p1, p2}, Lmm/yp/purchasesdk/e/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_f
        :pswitch_16
        :pswitch_1d
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lmm/yp/purchasesdk/e/d;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lmm/yp/purchasesdk/e/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lmm/yp/purchasesdk/e/d;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d()V
    .registers 6

    const/4 v5, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/InAppBillingLibrary/IAPConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_68

    :try_start_25
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    if-eqz v2, :cond_51

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_36
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_36

    :cond_4e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_51} :catch_60
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_51} :catch_64

    :cond_51
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_76

    sput v5, Lmm/yp/purchasesdk/e/d;->k:I

    :goto_5f
    return-void

    :catch_60
    move-exception v0

    sput v5, Lmm/yp/purchasesdk/e/d;->k:I

    goto :goto_5f

    :catch_64
    move-exception v0

    sput v5, Lmm/yp/purchasesdk/e/d;->k:I

    goto :goto_5f

    :cond_68
    sput v5, Lmm/yp/purchasesdk/e/d;->k:I

    goto :goto_5f

    :pswitch_6b
    const/4 v0, 0x0

    sput v0, Lmm/yp/purchasesdk/e/d;->k:I

    goto :goto_5f

    :pswitch_6f
    sput v5, Lmm/yp/purchasesdk/e/d;->k:I

    goto :goto_5f

    :pswitch_72
    const/4 v0, 0x2

    sput v0, Lmm/yp/purchasesdk/e/d;->k:I

    goto :goto_5f

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_6f
        :pswitch_72
    .end packed-switch
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "PurchaseListener"

    invoke-static {v1, v2, v0}, Lmm/yp/purchasesdk/e/d;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "onQueryFinish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_50

    const-string v1, "PurchaseListener"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query statuscode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p3, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lmm/yp/purchasesdk/PurchaseCode;->getReason(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmm/yp/purchasesdk/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    :goto_49
    iget-object v0, p0, Lmm/yp/purchasesdk/e/d;->a:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_50
    const-string v1, "onInitFinish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8f

    const-string v1, "PurchaseListener"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init statuscode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p3, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lmm/yp/purchasesdk/PurchaseCode;->getReason(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmm/yp/purchasesdk/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    :cond_8f
    const-string v1, "onUnsubscribeFinish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_cf

    const-string v1, "PurchaseListener"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsubscribe statuscode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p3, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lmm/yp/purchasesdk/PurchaseCode;->getReason(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmm/yp/purchasesdk/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_49

    :cond_cf
    const-string v1, "onBillingFinish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_49

    const-string v1, "PurchaseListener"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Billing statuscode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p3, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lmm/yp/purchasesdk/PurchaseCode;->getReason(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmm/yp/purchasesdk/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_49
.end method
