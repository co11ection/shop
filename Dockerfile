FROM python:3

ENV PYTHONIOENCODING UTF-8
ENV TZ=Asia/Bishkek

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /usr/src/app

COPY requirments.txt ./
RUN pip install --no-cache-dir -r requirments.txt

RUN mkdir static && mkdir media

COPY . .

EXPOSE 8000

