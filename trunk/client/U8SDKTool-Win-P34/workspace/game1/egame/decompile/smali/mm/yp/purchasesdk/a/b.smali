.class public Lmm/yp/purchasesdk/a/b;
.super Ljava/lang/Object;


# static fields
.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lmm/yp/purchasesdk/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/yp/purchasesdk/a/b;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lmm/yp/purchasesdk/a/a;Landroid/os/Message;)V
    .registers 16

    new-instance v10, Lmm/yp/purchasesdk/sms/a;

    invoke-direct {v10}, Lmm/yp/purchasesdk/sms/a;-><init>()V

    invoke-static {p1}, Lmm/yp/purchasesdk/sms/SMSReceiver;->a(Landroid/os/Message;)V

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->z()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_22

    invoke-static {v9}, Lmm/yp/purchasesdk/e/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lmm/yp/purchasesdk/e/c;->a(J)Ljava/lang/String;

    move-result-object v9

    :cond_22
    invoke-static {}, Lmm/yp/purchasesdk/e/c;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lmm/yp/purchasesdk/e/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lmm/yp/purchasesdk/e/c;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->y()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmm/yp/purchasesdk/e/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lmm/yp/purchasesdk/e/c;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->n()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmm/yp/purchasesdk/e/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lmm/yp/purchasesdk/e/c;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->m()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmm/yp/purchasesdk/e/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lmm/yp/purchasesdk/e/c;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lmm/yp/purchasesdk/e/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->i()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lmm/yp/purchasesdk/PayInfo;->getItemPrice()F

    move-result v8

    float-to-long v12, v8

    invoke-static {v12, v13}, Lmm/yp/purchasesdk/e/c;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v9}, Lmm/yp/purchasesdk/fingerprint/IdentifyApp;->SMSOrderContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0, p1}, Lmm/yp/purchasesdk/sms/a;->a(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method
