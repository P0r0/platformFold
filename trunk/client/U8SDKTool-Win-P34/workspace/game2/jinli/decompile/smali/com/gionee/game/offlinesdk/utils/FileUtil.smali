.class public Lcom/gionee/game/offlinesdk/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNewFile(Ljava/io/File;)Z
    .registers 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    return v0
.end method

.method public static delete(Ljava/io/File;)Z
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 10
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public static mkdirs(Ljava/io/File;)Z
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 22
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    return v0
.end method

.method public static renameTo(Ljava/io/File;Ljava/io/File;)Z
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "aimFile"    # Ljava/io/File;

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static setLastModified(Ljava/io/File;J)Z
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "time"    # J

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2}, Ljava/io/File;->setLastModified(J)Z

    move-result v0

    return v0
.end method
