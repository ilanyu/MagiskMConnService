.class public abstract Landroid/support/v4/media/TransportPerformer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final AUDIOFOCUS_GAIN:I = 0x1

.field static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field static final AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field static final AUDIOFOCUS_LOSS:I = -0x1

.field static final AUDIOFOCUS_LOSS_TRANSIENT:I = -0x2

.field static final AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK:I = -0x3


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    const/4 p1, 0x0

    goto :goto_7

    :cond_5
    const/16 p1, 0x7f

    :goto_7
    if-eqz p1, :cond_25

    .line 246
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 247
    new-instance v10, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    move-wide v1, v8

    move-wide v3, v8

    move v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {p0, p1, v10}, Landroid/support/v4/media/TransportPerformer;->onMediaButtonDown(ILandroid/view/KeyEvent;)Z

    .line 248
    new-instance v10, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {p0, p1, v10}, Landroid/support/v4/media/TransportPerformer;->onMediaButtonUp(ILandroid/view/KeyEvent;)Z

    :cond_25
    return-void
.end method

.method public onGetBufferPercentage()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x64

    return v0
.end method

.method public abstract onGetCurrentPosition()J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onGetDuration()J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public onGetTransportControlFlags()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x3c

    return v0
.end method

.method public abstract onIsPlaying()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public onMediaButtonDown(ILandroid/view/KeyEvent;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p2, 0x1

    sparse-switch p1, :sswitch_data_20

    goto :goto_1e

    .line 175
    :sswitch_5
    invoke-virtual {p0}, Landroid/support/v4/media/TransportPerformer;->onPause()V

    return p2

    .line 172
    :sswitch_9
    invoke-virtual {p0}, Landroid/support/v4/media/TransportPerformer;->onStart()V

    return p2

    .line 178
    :sswitch_d
    invoke-virtual {p0}, Landroid/support/v4/media/TransportPerformer;->onStop()V

    return p2

    .line 182
    :sswitch_11
    invoke-virtual {p0}, Landroid/support/v4/media/TransportPerformer;->onIsPlaying()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 183
    invoke-virtual {p0}, Landroid/support/v4/media/TransportPerformer;->onPause()V

    goto :goto_1e

    .line 185
    :cond_1b
    invoke-virtual {p0}, Landroid/support/v4/media/TransportPerformer;->onStart()V

    :goto_1e
    return p2

    nop

    :sswitch_data_20
    .sparse-switch
        0x4f -> :sswitch_11
        0x55 -> :sswitch_11
        0x56 -> :sswitch_d
        0x7e -> :sswitch_9
        0x7f -> :sswitch_5
    .end sparse-switch
.end method

.method public onMediaButtonUp(ILandroid/view/KeyEvent;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public abstract onPause()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onSeekTo(J)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onStart()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onStop()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
