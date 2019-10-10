.class synthetic Lcom/xiaomi/opensdk/pdc/OpenProfileManager$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 52
    invoke-static {}, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->values()[Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaomi/opensdk/pdc/OpenProfileManager$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/xiaomi/opensdk/pdc/OpenProfileManager$1;->a:[I

    sget-object v1, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    invoke-virtual {v1}, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/xiaomi/opensdk/pdc/OpenProfileManager$1;->a:[I

    sget-object v1, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->d:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    invoke-virtual {v1}, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/xiaomi/opensdk/pdc/OpenProfileManager$1;->a:[I

    sget-object v1, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->b:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    invoke-virtual {v1}, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method
