.class synthetic Landroid/support/v4/content/ModernAsyncTask$4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$support$v4$content$ModernAsyncTask$Status:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 431
    invoke-static {}, Landroid/support/v4/content/ModernAsyncTask$Status;->values()[Landroid/support/v4/content/ModernAsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/support/v4/content/ModernAsyncTask$4;->$SwitchMap$android$support$v4$content$ModernAsyncTask$Status:[I

    :try_start_9
    sget-object v0, Landroid/support/v4/content/ModernAsyncTask$4;->$SwitchMap$android$support$v4$content$ModernAsyncTask$Status:[I

    sget-object v1, Landroid/support/v4/content/ModernAsyncTask$Status;->RUNNING:Landroid/support/v4/content/ModernAsyncTask$Status;

    invoke-virtual {v1}, Landroid/support/v4/content/ModernAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Landroid/support/v4/content/ModernAsyncTask$4;->$SwitchMap$android$support$v4$content$ModernAsyncTask$Status:[I

    sget-object v1, Landroid/support/v4/content/ModernAsyncTask$Status;->FINISHED:Landroid/support/v4/content/ModernAsyncTask$Status;

    invoke-virtual {v1}, Landroid/support/v4/content/ModernAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
