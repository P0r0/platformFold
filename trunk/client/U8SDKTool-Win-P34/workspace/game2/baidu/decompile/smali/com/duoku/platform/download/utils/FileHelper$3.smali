.class Lcom/duoku/platform/download/utils/FileHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/FileHelper;->saveString(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/FileHelper$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/duoku/platform/download/utils/FileHelper$3;->b:Ljava/lang/String;

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 604
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/duoku/platform/download/utils/FileHelper$3;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 605
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    .line 607
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 610
    :cond_10
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duoku/platform/download/utils/FileHelper$3;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    .line 619
    :goto_31
    return-void

    .line 615
    :catch_32
    move-exception v0

    .line 617
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31
.end method
