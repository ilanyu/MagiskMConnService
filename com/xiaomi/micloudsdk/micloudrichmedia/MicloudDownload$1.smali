.class synthetic Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload;
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

    .line 21
    invoke-static {}, Lcn/kuaipan/kss/KssDef$KssAPIResult;->values()[Lcn/kuaipan/kss/KssDef$KssAPIResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$1;->a:[I

    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    invoke-virtual {v1}, Lcn/kuaipan/kss/KssDef$KssAPIResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$1;->a:[I

    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->b:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    invoke-virtual {v1}, Lcn/kuaipan/kss/KssDef$KssAPIResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$1;->a:[I

    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->c:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    invoke-virtual {v1}, Lcn/kuaipan/kss/KssDef$KssAPIResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$1;->a:[I

    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->d:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    invoke-virtual {v1}, Lcn/kuaipan/kss/KssDef$KssAPIResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    :try_start_35
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$1;->a:[I

    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->e:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    invoke-virtual {v1}, Lcn/kuaipan/kss/KssDef$KssAPIResult;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_40

    :catch_40
    :try_start_40
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$1;->a:[I

    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->f:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    invoke-virtual {v1}, Lcn/kuaipan/kss/KssDef$KssAPIResult;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4b
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$1;->a:[I

    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->g:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    invoke-virtual {v1}, Lcn/kuaipan/kss/KssDef$KssAPIResult;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_56

    :catch_56
    :try_start_56
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$1;->a:[I

    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->h:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    invoke-virtual {v1}, Lcn/kuaipan/kss/KssDef$KssAPIResult;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_62

    :catch_62
    return-void
.end method
