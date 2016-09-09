.class public Lcom/youju/statistics/a/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Z

.field public static final g:Z

.field public static final h:Z

.field public static final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, ""

    invoke-static {v0}, Lcom/youju/statistics/a/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/a/m;->a:Ljava/lang/String;

    const-string v0, "ro.product.brand"

    const-string v1, "GiONEE"

    invoke-static {v0, v1}, Lcom/youju/statistics/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/a/m;->b:Ljava/lang/String;

    const-string v0, "ro.product.model"

    const-string v1, "Phone"

    invoke-static {v0, v1}, Lcom/youju/statistics/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/a/m;->c:Ljava/lang/String;

    const-string v0, "ro.gn.extmodel"

    const-string v1, "Phone"

    invoke-static {v0, v1}, Lcom/youju/statistics/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/a/m;->d:Ljava/lang/String;

    const-string v0, "ro.gn.gnznvernumber"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/youju/statistics/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/a/m;->e:Ljava/lang/String;

    const-string v0, ""

    invoke-static {v0}, Lcom/youju/statistics/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/youju/statistics/a/m;->f:Z

    const-string v0, "ro.mediatek.gemini_support"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/youju/statistics/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/youju/statistics/a/m;->g:Z

    const-string v0, "ro.product.manufacturer"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/youju/statistics/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GIONEE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/youju/statistics/a/m;->h:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/youju/statistics/a/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uffe5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/youju/statistics/a/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/a/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/a/m;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "gsm.operator.numeric"

    invoke-static {v0, p0}, Lcom/youju/statistics/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "gsm.operator.numeric.2"

    invoke-static {v0, p0}, Lcom/youju/statistics/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "ro.gn.gnromvernumber"

    invoke-static {v0, p0}, Lcom/youju/statistics/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
