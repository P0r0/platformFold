.class public Lcom/huanju/data/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, -0x65

    sput v0, Lcom/huanju/data/a/a;->a:I

    const/16 v0, -0x66

    sput v0, Lcom/huanju/data/a/a;->b:I

    const/16 v0, -0x67

    sput v0, Lcom/huanju/data/a/a;->c:I

    const-string v0, "comment text lenth must be between [5,1000], comment rate value must be between [0, 10]."

    sput-object v0, Lcom/huanju/data/a/a;->d:Ljava/lang/String;

    const-string v0, "network error."

    sput-object v0, Lcom/huanju/data/a/a;->e:Ljava/lang/String;

    const-string v0, "data parse error."

    sput-object v0, Lcom/huanju/data/a/a;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
