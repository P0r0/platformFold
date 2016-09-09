.class Lcom/baidu/bdgame/sdk/obf/ns$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:J

.field c:J

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Z


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/ns$a;->b:J

    .line 74
    iput-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/ns$a;->c:J

    .line 78
    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ns$a;->e:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ns$a;->f:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ns$a;->g:Z

    .line 67
    return-void
.end method
