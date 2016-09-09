.class public Lmm/yp/purchasesdk/e/c;
.super Ljava/lang/Object;


# static fields
.field public static A:Ljava/lang/String;

.field public static B:Ljava/lang/String;

.field private static e:Z

.field public static f:Ljava/lang/Boolean;

.field private static f:Z

.field public static g:I

.field private static g:Ljava/lang/Boolean;

.field private static h:I

.field private static h:Ljava/lang/Boolean;

.field private static i:I

.field private static i:Ljava/lang/Boolean;

.field private static j:I

.field private static j:Ljava/lang/Boolean;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    sput v3, Lmm/yp/purchasesdk/e/c;->g:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/yp/purchasesdk/e/c;->f:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/yp/purchasesdk/e/c;->g:Ljava/lang/Boolean;

    const-string v0, ""

    sput-object v0, Lmm/yp/purchasesdk/e/c;->l:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lmm/yp/purchasesdk/e/c;->m:Ljava/lang/String;

    sput v2, Lmm/yp/purchasesdk/e/c;->h:I

    const-string v0, ""

    sput-object v0, Lmm/yp/purchasesdk/e/c;->n:Ljava/lang/String;

    const-string v0, "1.5.0"

    sput-object v0, Lmm/yp/purchasesdk/e/c;->o:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/yp/purchasesdk/e/c;->h:Ljava/lang/Boolean;

    const-string v0, "15985"

    sput-object v0, Lmm/yp/purchasesdk/e/c;->p:Ljava/lang/String;

    const/16 v0, 0x19

    sput v0, Lmm/yp/purchasesdk/e/c;->i:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/yp/purchasesdk/e/c;->i:Ljava/lang/Boolean;

    const-string v0, ""

    sput-object v0, Lmm/yp/purchasesdk/e/c;->q:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lmm/yp/purchasesdk/e/c;->r:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lmm/yp/purchasesdk/e/c;->s:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lmm/yp/purchasesdk/e/c;->t:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lmm/yp/purchasesdk/e/c;->u:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lmm/yp/purchasesdk/e/c;->v:Ljava/lang/String;

    sput-boolean v1, Lmm/yp/purchasesdk/e/c;->e:Z

    sput-boolean v2, Lmm/yp/purchasesdk/e/c;->f:Z

    const-string v0, ""

    sput-object v0, Lmm/yp/purchasesdk/e/c;->w:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lmm/yp/purchasesdk/e/c;->x:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lmm/yp/purchasesdk/e/c;->y:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lmm/yp/purchasesdk/e/c;->z:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/yp/purchasesdk/e/c;->j:Ljava/lang/Boolean;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    sput-object v0, Lmm/yp/purchasesdk/e/c;->A:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lmm/yp/purchasesdk/e/c;->B:Ljava/lang/String;

    sput v3, Lmm/yp/purchasesdk/e/c;->j:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/util/DisplayMetrics;
    .registers 1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/lang/Boolean;
    .registers 1

    sget-object v0, Lmm/yp/purchasesdk/e/c;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .registers 10

    const-wide/16 v6, 0x24

    const-string v0, "MMBillingSDk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t10=  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MMBillingSDk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tt=  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    div-long v0, p0, v6

    rem-long v4, p0, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4, v5}, Lmm/yp/purchasesdk/e/c;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    :goto_61
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_82

    div-long v2, v0, v6

    rem-long/2addr v0, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v1}, Lmm/yp/purchasesdk/e/c;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move-wide v0, v2

    goto :goto_61

    :cond_82
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    const-string v1, "MMBillingSDk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result=  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MMBillingSDk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reresult=  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MMBillingSDk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result.length()=  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)V
    .registers 1

    sput p0, Lmm/yp/purchasesdk/e/c;->h:I

    return-void
.end method

.method public static b()Ljava/lang/Boolean;
    .registers 1

    sget-object v0, Lmm/yp/purchasesdk/e/c;->h:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static b(J)Ljava/lang/String;
    .registers 4

    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    if-gez v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    const-wide/16 v0, 0x37

    add-long/2addr v0, p0

    long-to-int v0, v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lmm/yp/purchasesdk/e/c;->v:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Ljava/lang/Boolean;)V
    .registers 1

    sput-object p0, Lmm/yp/purchasesdk/e/c;->i:Ljava/lang/Boolean;

    return-void
.end method

.method public static b(Z)V
    .registers 1

    sput-boolean p0, Lmm/yp/purchasesdk/e/c;->f:Z

    return-void
.end method

.method public static b()Z
    .registers 1

    sget-boolean v0, Lmm/yp/purchasesdk/e/c;->f:Z

    return v0
.end method

.method public static c()I
    .registers 1

    sget v0, Lmm/yp/purchasesdk/e/c;->i:I

    return v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "[a-zA-Z`~!@#$%^&*()+=|{}\':;\',.\\[\\]<>/?~\uff01@#\uffe5%\u2026\u2026&*\uff08\uff09\u2014\u2014+|{}\u3010\u3011\u2018\uff1b\uff1a\u201d\u201c\u2019\uff0c\u3002\u3001\uff1f]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/Boolean;)V
    .registers 1

    sput-object p0, Lmm/yp/purchasesdk/e/c;->h:Ljava/lang/Boolean;

    return-void
.end method

.method public static d()I
    .registers 1

    sget v0, Lmm/yp/purchasesdk/e/c;->h:I

    return v0
.end method

.method public static d(Ljava/lang/Boolean;)V
    .registers 1

    sput-object p0, Lmm/yp/purchasesdk/e/c;->g:Ljava/lang/Boolean;

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lmm/yp/purchasesdk/e/c;->r:Ljava/lang/String;

    return-void
.end method

.method public static e()I
    .registers 1

    sget v0, Lmm/yp/purchasesdk/e/c;->j:I

    return v0
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    sput-object v0, Lmm/yp/purchasesdk/e/c;->q:Ljava/lang/String;

    :cond_d
    sput-object p0, Lmm/yp/purchasesdk/e/c;->q:Ljava/lang/String;

    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .registers 1

    if-eqz p0, :cond_4

    sput-object p0, Lmm/yp/purchasesdk/e/c;->l:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lmm/yp/purchasesdk/e/c;->y:Ljava/lang/String;

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lmm/yp/purchasesdk/e/c;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lmm/yp/purchasesdk/e/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_15} :catch_19

    move-result-object v0

    :goto_16
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object v0

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_16
.end method

.method public static h()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmm/yp/purchasesdk/e/c;->r:Ljava/lang/String;

    return-object v0
.end method

.method public static h(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lmm/yp/purchasesdk/e/c;->z:Ljava/lang/String;

    return-void
.end method

.method public static i()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmm/yp/purchasesdk/e/c;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lmm/yp/purchasesdk/e/c;->u:Ljava/lang/String;

    return-void
.end method

.method public static j()Ljava/lang/String;
    .registers 1

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u6b22\u8fce\u4f7f\u7528\u4e2d\u56fd\u79fb\u52a8\u624b\u673a\u8bdd\u8d39\u652f\u4ed8\uff0c\u60a8\u7684\u652f\u4ed8\u8bf7\u6c42\u5c06\u901a\u8fc7\u77ed\u4fe1\u52a0\u5bc6\u65b9\u5f0f\u53d1\u9001\u7ed9\u4e2d\u56fd\u79fb\u52a8\u652f\u4ed8\u7cfb\u7edf\u3002\u652f\u4ed8\u6210\u529f\u540e\uff0c\u60a8\u53ef\u767b\u9646mm.10086.cn\u6216\u62e8\u625310086\u67e5\u8be2\u8d2d\u4e70\u8bb0\u5f55\u3002 "

    return-object v0
.end method

.method public static j(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lmm/yp/purchasesdk/e/c;->n:Ljava/lang/String;

    return-void
.end method

.method public static k()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmm/yp/purchasesdk/e/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static k(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lmm/yp/purchasesdk/e/c;->s:Ljava/lang/String;

    return-void
.end method

.method public static l()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmm/yp/purchasesdk/e/c;->v:Ljava/lang/String;

    return-object v0
.end method

.method public static l(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x510

    if-ge v1, v2, :cond_16

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_16

    sput-object p0, Lmm/yp/purchasesdk/e/c;->t:Ljava/lang/String;

    return-void

    :cond_16
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "PutChannel Error! you must input 0-1295 numbers"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static m()Ljava/lang/String;
    .registers 4

    sget-object v0, Lmm/yp/purchasesdk/e/c;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/yp/purchasesdk/e/c;->w:Ljava/lang/String;

    sget-object v0, Lmm/yp/purchasesdk/e/c;->w:Ljava/lang/String;

    if-eqz v0, :cond_1e

    sget-object v0, Lmm/yp/purchasesdk/e/c;->x:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_1e
    const-string v0, "10086"

    sput-object v0, Lmm/yp/purchasesdk/e/c;->w:Ljava/lang/String;

    :cond_22
    const/4 v0, 0x0

    const-string v1, "MMBillingSDk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Imsi-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lmm/yp/purchasesdk/e/c;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmm/yp/purchasesdk/e/d;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lmm/yp/purchasesdk/e/c;->w:Ljava/lang/String;

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .registers 4

    sget-object v0, Lmm/yp/purchasesdk/e/c;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/yp/purchasesdk/e/c;->x:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "MMBillingSDk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mImei-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lmm/yp/purchasesdk/e/c;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmm/yp/purchasesdk/e/d;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lmm/yp/purchasesdk/e/c;->x:Ljava/lang/String;

    if-eqz v0, :cond_39

    sget-object v0, Lmm/yp/purchasesdk/e/c;->x:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_39
    const-string v0, "10086"

    sput-object v0, Lmm/yp/purchasesdk/e/c;->x:Ljava/lang/String;

    :cond_3d
    sget-object v0, Lmm/yp/purchasesdk/e/c;->x:Ljava/lang/String;

    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "99999999"

    sput-object v0, Lmm/yp/purchasesdk/e/c;->y:Ljava/lang/String;

    :cond_e
    sget-object v0, Lmm/yp/purchasesdk/e/c;->y:Ljava/lang/String;

    return-object v0
.end method

.method public static p()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "99999999"

    sput-object v0, Lmm/yp/purchasesdk/e/c;->z:Ljava/lang/String;

    :cond_e
    sget-object v0, Lmm/yp/purchasesdk/e/c;->z:Ljava/lang/String;

    return-object v0
.end method

.method public static q()Ljava/lang/String;
    .registers 8

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->z()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/yp/purchasesdk/e/c;->i(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d

    invoke-static {v4}, Lmm/yp/purchasesdk/e/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lmm/yp/purchasesdk/e/c;->a(J)Ljava/lang/String;

    move-result-object v4

    :cond_1d
    invoke-static {}, Lmm/yp/purchasesdk/e/c;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmm/yp/purchasesdk/PayInfo;->getItemPrice()F

    move-result v2

    float-to-long v2, v2

    invoke-static {v2, v3}, Lmm/yp/purchasesdk/e/c;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->y()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmm/yp/purchasesdk/e/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lmm/yp/purchasesdk/e/c;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->n()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmm/yp/purchasesdk/e/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lmm/yp/purchasesdk/e/c;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->m()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmm/yp/purchasesdk/e/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lmm/yp/purchasesdk/e/c;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lmm/yp/purchasesdk/fingerprint/IdentifyApp;->generateTransactionID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static r()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmm/yp/purchasesdk/e/c;->u:Ljava/lang/String;

    return-object v0
.end method

.method public static s()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmm/yp/purchasesdk/e/c;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 1

    sput-object p0, Lmm/yp/purchasesdk/e/c;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static t()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :try_start_c
    const-string v2, "2010-01-01 0:0:0"

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_11
    .catch Ljava/text/ParseException; {:try_start_c .. :try_end_11} :catch_29

    move-result-object v0

    :goto_12
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lmm/yp/purchasesdk/e/c;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_29
    move-exception v1

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_12
.end method

.method public static u()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lmm/yp/purchasesdk/e/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_15} :catch_19

    move-result-object v0

    :goto_16
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_16
.end method

.method public static v()Ljava/lang/String;
    .registers 1

    const-string v0, "SMS"

    return-object v0
.end method

.method public static w()Ljava/lang/String;
    .registers 1

    const-string v0, ""

    return-object v0
.end method

.method public static x()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmm/yp/purchasesdk/e/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static y()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmm/yp/purchasesdk/e/c;->s:Ljava/lang/String;

    return-object v0
.end method

.method public static z()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmm/yp/purchasesdk/e/c;->t:Ljava/lang/String;

    return-object v0
.end method
