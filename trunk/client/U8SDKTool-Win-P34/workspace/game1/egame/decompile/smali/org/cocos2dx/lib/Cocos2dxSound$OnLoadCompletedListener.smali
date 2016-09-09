.class public Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;
.super Ljava/lang/Object;
.source "Cocos2dxSound.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnLoadCompletedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxSound;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxSound;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 10

    if-nez p3, :cond_2

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxSound;->mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->access$000(Lorg/cocos2dx/lib/Cocos2dxSound;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;

    iget v0, v8, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->soundID:I

    if-ne p2, v0, :cond_0

    iget-object v9, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    iget-object v1, v8, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->path:Ljava/lang/String;

    iget v2, v8, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->soundID:I

    iget-boolean v3, v8, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->isLoop:Z

    iget v4, v8, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->pitch:F

    iget v5, v8, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->pan:F

    iget v6, v8, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->gain:F

    # invokes: Lorg/cocos2dx/lib/Cocos2dxSound;->doPlayEffect(Ljava/lang/String;IZFFF)I
    invoke-static/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxSound;->access$200(Lorg/cocos2dx/lib/Cocos2dxSound;Ljava/lang/String;IZFFF)I

    move-result v0

    # setter for: Lorg/cocos2dx/lib/Cocos2dxSound;->mStreamIdSyn:I
    invoke-static {v9, v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->access$102(Lorg/cocos2dx/lib/Cocos2dxSound;I)I

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxSound;->mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->access$000(Lorg/cocos2dx/lib/Cocos2dxSound;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxSound;->mSemaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->access$300(Lorg/cocos2dx/lib/Cocos2dxSound;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    const/4 v1, -0x1

    # setter for: Lorg/cocos2dx/lib/Cocos2dxSound;->mStreamIdSyn:I
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxSound;->access$102(Lorg/cocos2dx/lib/Cocos2dxSound;I)I

    goto :goto_0
.end method
