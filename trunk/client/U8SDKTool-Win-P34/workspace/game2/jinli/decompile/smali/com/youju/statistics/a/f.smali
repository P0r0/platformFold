.class public final enum Lcom/youju/statistics/a/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youju/statistics/a/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/youju/statistics/a/f;

.field public static final enum b:Lcom/youju/statistics/a/f;

.field public static final enum c:Lcom/youju/statistics/a/f;

.field private static final synthetic d:[Lcom/youju/statistics/a/f;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/youju/statistics/a/f;

    const-string v1, "QC_MULTISIM"

    invoke-direct {v0, v1, v2}, Lcom/youju/statistics/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youju/statistics/a/f;->a:Lcom/youju/statistics/a/f;

    new-instance v0, Lcom/youju/statistics/a/f;

    const-string v1, "MTK_MULTISIM"

    invoke-direct {v0, v1, v3}, Lcom/youju/statistics/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youju/statistics/a/f;->b:Lcom/youju/statistics/a/f;

    new-instance v0, Lcom/youju/statistics/a/f;

    const-string v1, "SINGLE_SIM"

    invoke-direct {v0, v1, v4}, Lcom/youju/statistics/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youju/statistics/a/f;->c:Lcom/youju/statistics/a/f;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/youju/statistics/a/f;

    sget-object v1, Lcom/youju/statistics/a/f;->a:Lcom/youju/statistics/a/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youju/statistics/a/f;->b:Lcom/youju/statistics/a/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youju/statistics/a/f;->c:Lcom/youju/statistics/a/f;

    aput-object v1, v0, v4

    sput-object v0, Lcom/youju/statistics/a/f;->d:[Lcom/youju/statistics/a/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/youju/statistics/a/f;
    .registers 1

    sget-object v0, Lcom/youju/statistics/a/f;->d:[Lcom/youju/statistics/a/f;

    invoke-virtual {v0}, [Lcom/youju/statistics/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youju/statistics/a/f;

    return-object v0
.end method
