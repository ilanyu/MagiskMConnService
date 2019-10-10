.class public Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcn/kuaipan/kss/KssDef$KssAPIResult;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
    .registers 2

    .line 21
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$1;->a:[I

    invoke-virtual {p0}, Lcn/kuaipan/kss/KssDef$KssAPIResult;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_26

    .line 39
    sget-object p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->b:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p0

    .line 37
    :pswitch_e
    sget-object p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->h:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p0

    .line 35
    :pswitch_11
    sget-object p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->g:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p0

    .line 33
    :pswitch_14
    sget-object p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->f:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p0

    .line 31
    :pswitch_17
    sget-object p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->e:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p0

    .line 29
    :pswitch_1a
    sget-object p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->d:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p0

    .line 27
    :pswitch_1d
    sget-object p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->c:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p0

    .line 25
    :pswitch_20
    sget-object p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->b:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p0

    .line 23
    :pswitch_23
    sget-object p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method
