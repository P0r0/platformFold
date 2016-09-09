.class Lcom/duoku/platform/download/utils/FileHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/FileHelper;->saveResultToLogFile(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Z

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/FileHelper$4;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/duoku/platform/download/utils/FileHelper$4;->b:Z

    iput-object p3, p0, Lcom/duoku/platform/download/utils/FileHelper$4;->c:Ljava/lang/String;

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 714
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/duoku/sdk/.Logs/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/download/utils/FileHelper$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 715
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 717
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 720
    :cond_2b
    new-instance v1, Ljava/io/FileWriter;

    iget-boolean v2, p0, Lcom/duoku/platform/download/utils/FileHelper$4;->b:Z

    invoke-direct {v1, v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duoku/platform/download/utils/FileHelper$4;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_4e

    .line 729
    :goto_4d
    return-void

    .line 725
    :catch_4e
    move-exception v0

    .line 727
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4d
.end method
