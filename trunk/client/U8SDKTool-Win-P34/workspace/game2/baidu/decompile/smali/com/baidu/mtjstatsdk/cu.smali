.class Lcom/baidu/mtjstatsdk/cu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 766
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/mtjstatsdk/cu;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 769
    sget-boolean v0, Lcom/baidu/mtjstatsdk/cu;->a:Z

    if-eqz v0, :cond_7

    .line 770
    invoke-static {p0, p1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_7
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    .prologue
    .line 781
    sget-boolean v0, Lcom/baidu/mtjstatsdk/cu;->a:Z

    if-eqz v0, :cond_22

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_22
    return-void
.end method
